#ifndef _MAIN_H_
#define _MAIN_H_

#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include "fsm.h"

void timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b);
void timeval_add (struct timeval *res, struct timeval *a, struct timeval *b);
int timeval_less (struct timeval *a, struct timeval *b);

#define PULSADOR_CLEAN	0xFE
#define PULSADOR_ON	0x01
#define PRESENCIA_CLEAN	0xFD
#define PULSADOR_ON	0x02


#define CUP_TIME	250
#define COFFEE_TIME	3000
#define MILK_TIME	3000
#endif