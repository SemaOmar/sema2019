#ifndef _MAIN_H_
#define _MAIN_H_

#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include <pthread.h>


void timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b);
void timeval_add (struct timeval *res, struct timeval *a, struct timeval *b);
int timeval_less (struct timeval *a, struct timeval *b);

#define TRUE 1
#define FALSE 0

#define INTERRUPTOR	0x01
#define PRESENCIA_LUZ	0x02
#define PRESENCIA_ALARMA	0x04
#define CODIGO_OK 0x08
#define SIRENA 0x10
#define TIMER_PRESENCIA 0x20
#define TIMER_CODIGO 0x40
#define BOTON 0x80

#define INTERRUPTOR_CLEAN	0xFE
#define PRESENCIA_LUZ_CLEAN	0xFD
#define PRESENCIA_ALARMA_CLEAN	0xFB
#define CODIGO_OK_CLEAN 0xF7
#define SIRENA_CLEAN 0xEF
#define TIMER_PRESENCIA_CLEAN 0xDF
#define TIMER_CODIGO_CLEAN 0xBF
#define BOTON_CLEAN 0x7F

enum light_state { LIGHT_ON, LIGHT_OFF};
enum alarm_state { ALARM_ON, ALARM_OFF};
enum code_state { CODE_OFF, DIG1, DIG2, DIG3};


#endif