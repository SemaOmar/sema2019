
ltl spec1{ [] ( presencia -> <> ( state_luz == on ) ) }
ltl spec2{ [] ( ( state_luz == off && interruptor ) -> <> ( state_luz == on ) ) }
ltl spec3{ [] ( ( state_luz == on && interruptor ) -> <> ( state_luz == on ) ) }
//ltl spec4{ [] ( (( state_luz == on)  && ((!presencia) W (state_luz == off)) || timer) -> <> ( state_luz == off ) ) }

// Siguiendo el patron "P es true despues de Q" ----> [](!Q) | <>(Q & <>P))
ltl spec4{ []( ( !( ( state_luz == on)  && ( !presencia || interruptor || timer )) ) | <> (( ( state_luz == on)  && ( !presencia || interruptor || timer )) & <> state_luz == on ) ) }


// Estados
mtype = {on,off};
mtype state_luz;

// Entradas del sistema
bit presencia;	// Indica si el sensor PIR ha detectado la presencia de una persona
bit interruptor;	// Interruptor de la luz
bit boton;			// Boton de introduccion del codigo

//Variable interna
bit timer;
bit codigo_ok;

active proctype fsm_luz(){
  state_luz = off;
  timer = 0;
  do
  :: state_luz == off -> atomic{
     if
     :: (presencia || interruptor) -> state_luz = on; printf ("Enciende\n"); presencia = 0; interruptor = 0;
	 fi
  }
  :: state_luz == on -> atomic{
    if
    :: presencia -> printf ("Enciende\n"); presencia = 0;
	:: interruptor -> state_luz = off; printf ("Apaga\n"); interruptor = 0;
	:: timer -> printf ("Apaga\n"); state_luz = off; timer = 0;
	fi
  }
  od
}

active proctype fsm_alarma(){ //Simulacion FSM Alarma
	if
	:: printf ("Alarma ON\n");
	:: printf ("Alarma OFF\n");
	:: printf ("Alerta!!! Intruso!!!\n");
	fi
}

active proctype fsm_codigo(){ //Simulacion FSM Codigo
	if
	:: codigo_ok = 1;printf ("Codogo OK\n");
	:: codigo_ok = 0;printf ("Codigo ERROR\n");
	fi
}

active proctype actions(){
  do
	:: if
		:: presencia = 1;printf ("PRESENCIA\n");
		:: interruptor = 1;printf ("interruptor\n");
		:: timer = 1;printf ("TIMER\n");
		:: skip;printf ("SKIP\n");
		fi
		printf("Estado: %e -- Presencia: %d -- interruptor: %d\n\n\n", state_luz, presencia, interruptor);
  od
}