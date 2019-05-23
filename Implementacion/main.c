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

static int flags = 0;
static int button_pressed (fsm_t* this) { return button; }

static struct timeval timer_endtime;

static void encender_luz (fsm_t* this)
{
  printf("Luz encendida");
  flags &= PULSADOR_CLEAN;
  flags &= PRESENCIA_CLEAN;  
}

static void coffee (fsm_t* this)
{
  digitalWrite (GPIO_CUP, LOW);
  digitalWrite (GPIO_COFFEE, HIGH);
  timer_start (COFFEE_TIME);
}

static void milk (fsm_t* this)
{
  digitalWrite (GPIO_COFFEE, LOW);
  digitalWrite (GPIO_MILK, HIGH);
  timer_start (MILK_TIME);
}

static void finish (fsm_t* this)
{
  digitalWrite (GPIO_MILK, LOW);
  digitalWrite (GPIO_LED, HIGH);
}

/*
 * Explicit FSM description
 */
static fsm_trans_t cofm[] = {
  { COFM_WAITING, button_pressed, COFM_CUP,     cup    },
  { COFM_CUP,     timer_finished, COFM_COFFEE,  coffee },
  { COFM_COFFEE,  timer_finished, COFM_MILK,    milk   },
  { COFM_MILK,    timer_finished, COFM_WAITING, finish },
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



int main ()
{
  struct timeval clk_period = { 0, 250 * 1000 };
  struct timeval next_activation;
  fsm_t* cofm_fsm = fsm_new (cofm);
  
  gettimeofday (&next_activation, NULL);
  while (scanf("%d %d", &button, &timer) == 2) {
    fsm_fire (cofm_fsm);
    timeval_add (&next_activation, &next_activation, &clk_period);
    delay_until (&next_activation);
  }
}
