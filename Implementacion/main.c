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
#include "fsm.h"

static int flag = 0;

int codigo_secreto = 100;
int numero = 0;
int digito = 1;
char salir = 1;


/******************* FUNCIONES DE GUARDA *******************/
static int interruptor_presionado (fsm_t* this) {
	int aux = FALSE;
	if( (flag & INTERRUPTOR) == INTERRUPTOR ){aux = TRUE;}
	return aux;
}

static int presencia_detectada (fsm_t* this) {
	int aux = FALSE;
	if( (flag & PRESENCIA_LUZ) == PRESENCIA_LUZ){aux = TRUE;}
	return aux;
}

static int timer_presencia_finished (fsm_t* this) {
	int aux = FALSE;
	if ( (flag & TIMER_PRESENCIA) == TIMER_PRESENCIA ){aux = TRUE;}
	return aux;
}

static int activar (fsm_t* this) {
	int aux = FALSE;
	if ( (flag & CODIGO_OK) == CODIGO_OK ){aux = TRUE;}
	return aux;
}

static int intruso (fsm_t* this) {
	int aux = FALSE;
	if ( ((flag & PRESENCIA_ALARMA) == PRESENCIA_ALARMA ) && ((flag & CODIGO_OK) == CODIGO_OK ) ){
		//sirena = TRUE;
		aux = TRUE;
	}
	return aux;
}

static int cod_correcto (fsm_t* this) {
	int aux = FALSE;
	if ( ((flag & SIRENA) == SIRENA ) && ((flag & CODIGO_OK) == CODIGO_OK ) ){
		//sirena = TRUE;
		aux = TRUE;
	}
	return aux;
}

static int desactivar (fsm_t* this) {
	int aux = FALSE;
	if ( !((flag & SIRENA) == SIRENA ) && ((flag & CODIGO_OK) == CODIGO_OK ) ){aux = TRUE;}
	return aux;
}

static int boton_presionado (fsm_t* this) {
	int aux = FALSE;
	if ( (flag & BOTON) == BOTON ){aux = TRUE;}
	return aux;
}

static int timer_codigo_finished (fsm_t* this) {
	int aux = FALSE;
	if ( (flag & TIMER_CODIGO) == TIMER_CODIGO ){aux = TRUE;}
	return aux;
}

/******************* FUNCIONES DE SALIDA *******************/
static void encender_luz (fsm_t* this)
{
  printf("Luz encendida\n");
  flag &= INTERRUPTOR_CLEAN;
  flag &= PRESENCIA_LUZ_CLEAN;
}

static void apagar_luz (fsm_t* this)
{
  printf("Luz apagada\n");
  flag &= INTERRUPTOR_CLEAN;
  flag &=TIMER_PRESENCIA;
}

static void encender_alarma (fsm_t* this)
{
  printf("Alarma encendida\n");
  flag &= CODIGO_OK_CLEAN;
}

static void activar_sirena (fsm_t* this)
{
  printf("Sirena sonando\n");
  flag &= CODIGO_OK_CLEAN;
  flag &= PRESENCIA_ALARMA_CLEAN;
}

static void desactivar_sirena (fsm_t* this)
{
  printf("Sirena apagada\n");
  flag &= CODIGO_OK_CLEAN;
  flag &= PRESENCIA_ALARMA_CLEAN;
}

static void apagar_alarma (fsm_t* this)
{
  printf("Alarma apagada\n");
  flag &= CODIGO_OK_CLEAN;
}

static void inicializar (fsm_t* this)
{
  printf("Introduciendo codigo...\n");
  flag &= CODIGO_OK_CLEAN;
  flag &= BOTON_CLEAN;
  numero = 0;
  digito = 1;
}

static void incrementar_digito (fsm_t* this)
{
  digito ++;
  printf("Introduciendo digito: %d\n", digito);
  flag &= BOTON_CLEAN;
}

static void actulizar_numero (fsm_t* this)
{
  numero = numero*10 + digito;
  printf("Digito introducido\n");
  flag &= TIMER_CODIGO_CLEAN;
}

static void verificar_codigo (fsm_t* this)
{
  numero = numero*10 + digito;
  if (numero == codigo_secreto){
	  printf("Codigo correcto\n");
	  flag |= CODIGO_OK;
  }else {
	  printf("Codigo erroneo\n");
	  flag &= CODIGO_OK_CLEAN;
  }
}

/******************* FSMs *******************/
// FSM Luces
static fsm_trans_t luces[] = {
  { LIGHT_OFF, interruptor_presionado, LIGHT_ON, encender_luz},
  { LIGHT_OFF, presencia_detectada, LIGHT_ON, encender_luz},
  { LIGHT_ON, interruptor_presionado, LIGHT_OFF, apagar_luz},
  { LIGHT_ON, timer_presencia_finished, LIGHT_OFF, apagar_luz},
  {-1, NULL, -1, NULL },
};

// FSM Alarma
static fsm_trans_t alarma[] = {
  { ALARM_OFF, activar, ALARM_ON, encender_alarma},//Alarma apagada y se ha introducido codigo correcto
  { ALARM_ON, intruso, ALARM_ON, activar_sirena}, //Se ha detectado presencia y no se ha introducido codigo valido
  { ALARM_ON, cod_correcto, ALARM_ON, desactivar_sirena}, //Se ha detectado presencia pero se ha introducido el codigo correcto
  { ALARM_ON, desactivar, ALARM_OFF, apagar_alarma},//La alarma esta encendida, la sirena no esta sonando y se ha introducido codigo correcto
  {-1, NULL, -1, NULL },
};

// FSM Codigo
static fsm_trans_t codigo[] = {
  { CODE_OFF, boton_presionado, DIG1, inicializar}, //inicializamos digito y temporizador
  { DIG1, boton_presionado, DIG1, incrementar_digito },//Incrementamos numero y reiniciamos temporizador
  { DIG1, timer_codigo_finished, DIG2, actulizar_numero },
  { DIG2, boton_presionado, DIG2, incrementar_digito },
  { DIG2, timer_codigo_finished, DIG3, actulizar_numero },
  { DIG3, boton_presionado, DIG3, incrementar_digito },
  { DIG3, timer_codigo_finished, CODE_OFF, verificar_codigo },//Al terminar de introducir el ultimo digito, verificamos si es correcto
  {-1, NULL, -1, NULL },
};

/*
 * Utility functions, should be elsewhere
 */

/* res = a - b */
void timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b)
{
  res->tv_sec = a->tv_sec - b->tv_sec;
  res->tv_usec = a->tv_usec - b->tv_usec;
  if (res->tv_usec < 0) {
    --res->tv_sec;
    res->tv_usec += 1000000;
  }
}

/* res = a + b */
void timeval_add (struct timeval *res, struct timeval *a, struct timeval *b)
{
  res->tv_sec = a->tv_sec + b->tv_sec
    + a->tv_usec / 1000000 + b->tv_usec / 1000000; 
  res->tv_usec = a->tv_usec % 1000000 + b->tv_usec % 1000000;
}

/* a < b */
int timeval_less (struct timeval *a, struct timeval *b)
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
			case 'i':
				printf ("Tecla interruptor\n"); 
				flag = INTERRUPTOR;
			break;
			case 'b':
				printf ("Tecla boton\n"); 
				flag = BOTON;
			break;
			case 't':
				printf ("Tecla timer presencia\n"); 
				flag = TIMER_PRESENCIA;
			break;
			case 'y':
				printf ("Tecla timer codigo\n"); 
				flag = TIMER_CODIGO;
			break;
			case 'q':
				printf ("Saliendo del programa...\n"); 
				salir = 0;
			break;
		}
	}
}

int main (void)
{
  struct timeval clk_period = { 0, 250 * 1000 };
  struct timeval next_activation;
  
  pthread_t hilo_id;
  pthread_create(&hilo_id, NULL, teclado, NULL); //creacion de un hilo que maneje las entradas del sistema, simuladas con teclas
  
  fsm_t* luces_fsm = fsm_new (luces);
  fsm_t* alarma_fsm = fsm_new (alarma);
  fsm_t* codigo_fsm = fsm_new (codigo);
  
  gettimeofday (&next_activation, NULL);
  while (salir) {
    fsm_fire (luces_fsm);
	fsm_fire (alarma_fsm);
	fsm_fire (codigo_fsm);
    timeval_add (&next_activation, &next_activation, &clk_period);
    delay_until (&next_activation);
  }
  
  return 0;
}

