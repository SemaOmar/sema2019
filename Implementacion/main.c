/* FSM example

   Copyright (C) 2017 by Jose M. Moya

   This file is part of GreenLSI Unlessons.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include "main.h"

enum light_state { LIGHT_ON, LIGHT_OFF};
enum alarm_state { ALARM_ON, ALARM_OFF};
enum code_state { CODE_OFF, DIG1, DIG2, DIG3};

static int flags = 0;

static int button_pressed (fsm_t* this) { return button; }

static struct timeval timer_endtime;


/******************* FUNCIONES DE GUARDA *******************/
static int interruptor_presionado (fsm_t* this) {
	int estado = OFF;
	if( (flag & ~INTERRUPTOR) == INTERRUPTOR ){estado = ON;}
	return estado;
}

static int presencia_detectada (fsm_t* this) {
	int estado = NO;
	if( (flag & ~PRESENCIA_LUZ) == PRESENCIA_LUZ ){estado = SI;}
	return estado;
}
/*
OJO!!! Presencia debe tener dos flags, uno para las luces y otro para alarma
Si comparten el mismo flag y uno lo borra, el otro nunca llega a analizar el flag
*/
static int intruso (fsm_t* this) {
	int estado = NO;
	if ( ((flag & ~PRESENCIA_ALARMA) == PRESENCIA_ALARMA ) && ((flag & ~CODIGO_OK) == CODIGO_OK ) ){
		sirena = ON;
		estado = SI;
	}
	return estado;
}

static int no_intruso (fsm_t* this) {
	int estado = NO;
	if ( ((flag & ~PRESENCIA_ALARMA) == PRESENCIA_ALARMA ) && ((flag & ~CODIGO_OK) != CODIGO_OK ) ){
		sirena = OFF;
		estado = SI;
	}
	return estado;
}

static int desactivar (fsm_t* this) {
	int estado = NO;
	if ( ( sirena == OFF ) && ((flag & ~CODIGO_OK) == CODIGO_OK ) ){estado = SI;}
	return estado;
}

static int activar (fsm_t* this) {
	int estado = NO;
	if ( (flag & ~CODIGO_OK) == CODIGO_OK ){estado = SI;}
	return estado;
}

static int boton_presionado (fsm_t* this) {
	int estado = NO;
	if ( (flag & ~BOTON) == BOTON ){estado = SI;}
	return estado;
}

/******************* FUNCIONES DE SALIDA *******************/
static void encender_luz (fsm_t* this)
{
  printf("Luz encendida");
  flags &= PULSADOR_CLEAN;
  flags &= PRESENCIA_CLEAN;  
}

/******************* FSMs *******************/
// FSM Luces
static fsm_trans_t luces[] = {
  { LIGHT_OFF, interruptor_presionado, LIGHT_ON, encender_luz},
  { LIGHT_OFF, presencia_detectada, LIGHT_ON, encender_luz},
  { LIGHT_ON, interruptor_presionado, LIGHT_OFF, apagar_luz},
  { LIGHT_ON, presencia_detectada, LIGHT_OFF, encender_luz},
  { LIGHT_ON, timer_finished, LIGHT_OFF, apagar_luz},
  {-1, NULL, -1, NULL },
};

// FSM Alarma
static fsm_trans_t alarma[] = {
  { ALARM_ON, intruso, ALARM_ON, activar_sirena}, //Se ha detectado presencia y no se ha introducido codigo valido
  { ALARM_ON, no_intruso, ALARM_ON, desactivar_sirena}, //Se ha detectado presencia pero se ha introducido el codigo correcto
  { ALARM_ON, desactivar, ALARM_OFF, apagar_alarma}, //La alarma esta encendida, la sirena no esta sonando y se ha introducido codigo correcto
  { ALARM_OFF, activar, ALARM_OFF, encender_alarma}, //Alarma apagada y se ha introducido codigo correcto
  {-1, NULL, -1, NULL },
};

// FSM Codigo
static fsm_trans_t codigo[] = {
  { CODE_OFF, boton_presionado, DIG1, inicializar}, //inicializamos digito y temporizador
  { DIG1, boton_presionado, DIG1, incrementar_digito },//Incrementamos numero y reiniciamos temporizador
  { DIG1, timer_finished, DIG2, actulizar_numero },
  { DIG2, boton_presionado, DIG2, incrementar_digito },
  { DIG2, timer_finished, DIG3, actulizar_numero },
  { DIG3, boton_presionado, DIG3, incrementar_digito },
  { DIG3, timer_finished, CODE_OFF, verificar_codigo },//Al terminar de introducir el ultimo digito, verificamos si es correcto
  {-1, NULL, -1, NULL },
};

/*
 * Utility functions, should be elsewhere
 */

/* res = a - b */
void
timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b)
{
  res->tv_sec = a->tv_sec - b->tv_sec;
  res->tv_usec = a->tv_usec - b->tv_usec;
  if (res->tv_usec < 0) {
    --res->tv_sec;
    res->tv_usec += 1000000;
  }
}

/* res = a + b */
void
timeval_add (struct timeval *res, struct timeval *a, struct timeval *b)
{
  res->tv_sec = a->tv_sec + b->tv_sec
    + a->tv_usec / 1000000 + b->tv_usec / 1000000; 
  res->tv_usec = a->tv_usec % 1000000 + b->tv_usec % 1000000;
}

/* a < b */
int
timeval_less (struct timeval *a, struct timeval *b)
{
  return (a->tv_sec < b->tv_sec) ||
    ((a->tv_sec == b->tv_sec) && (a->tv_usec < b->tv_usec));
}

/* wait until next_activation (absolute time) */
void delay_until (struct timeval* next_activation)
{
  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timeval_sub (&timeout, next_activation, &now);
  select (0, NULL, NULL, NULL, &timeout);
}

void *teclado(void *arg) 
{
	char tecla;
	
	printf("Presiona una tecla para simular una accion\n");
	printf("\t p=sensor presencia\n");
	printf("\t b=boton luz\n");
	printf("\t t=timeout_codigo\n");
	printf("\t a=timeout_luces\n");
	printf("\t c=pulsacion corta\n");
	printf("\t l=pulsacion larga\n");
	
	while (1){
		
		scanf("%c", &tecla);
		
		switch(tecla){
			case 'p':
				printf ("Tecla presencia\n"); 
				flag = PRESENCIA_LUZ | PRESENCIA_ALARMA;
			break;
		}
	}
}

int main ()
{
  struct timeval clk_period = { 0, 250 * 1000 };
  struct timeval next_activation;
  
  pthread_t hilo_id;
  pthread_create(&hilo_id, NULL, teclado, NULL); //creacion de un hilo que maneje las entradas del sistema, simuladas con teclas
  
  fsm_t* luces_fsm = fsm_new (luces);
  fsm_t* alarma_fsm = fsm_new (alarma);
  fsm_t* codigo_fsm = fsm_new (codigo);
  
  gettimeofday (&next_activation, NULL);
  while (scanf("%d %d", &button, &timer) == 2) {
    fsm_fire (cofm_fsm);
    timeval_add (&next_activation, &next_activation, &clk_period);
    delay_until (&next_activation);
  }
}
