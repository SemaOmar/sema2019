
// Patron --> "P es true despues de Q" ----> []( (!Q) | <>(Q & <>P))

ltl spec1{ []( (!(state == OFF && boton)) | <>((state == OFF && boton) & <>(state == DIG1)) ) }
ltl spec2{ []( (!(state == DIG1 && time_out)) | <>((state == DIG1 && time_out) & <>(state == DIG2)) ) }
ltl spec3{ []( (!(state == DIG2 && time_out)) | <>((state == DIG2 && time_out) & <>(state == DIG3)) ) }
ltl spec4{ []( (!(state == DIG3 && time_out)) | <>((state == DIG3 && time_out) & <>(state == OFF)) ) }
ltl spec5{ []( (!(state == DIG3 && numero_correcto)) | <>((state == DIG3 && numero_correcto) & <>codigo_ok) ) }

// Estados
mtype = {OFF,DIG1,DIG2,DIG3};
mtype state;

// Entradas del sistema
bit presencia;	// Indica si el sensor PIR ha detectado la presencia de una persona
bit interruptor;	// Interruptor de la luz
bit boton;			// Boton de introduccion del codigo

// Variables internas
bit time_out;
bit numero_correcto;
bit codigo_ok;

active proctype codigo(){
	state = OFF;

	do
	:: (state == OFF) -> atomic {
		if
		:: boton -> printf("Introduccion Codigo\n"); boton = 0; time_out = 0; state = DIG1;
		:: skip;
		fi
	}
	:: (state == DIG1) -> atomic {
		if
		:: time_out -> printf("Digito 1 introducido\n"); time_out = 0; state = DIG2;
		:: boton && !time_out -> printf("Digito incrementado\n"); boton = 0;
		:: skip;
		fi
	}
	:: (state == DIG2) -> atomic {
		if
		:: time_out -> printf("Digito 2 introducido\n"); time_out = 0; state = DIG3;
		:: boton && !time_out -> printf("Digito incrementado\n"); boton = 0;
		:: skip;
		fi
	}
	:: (state == DIG3) -> atomic {
		if
		:: time_out && numero_correcto -> printf("Digito 3 introducido. Codigo correcto\n"); time_out = 0; numero_correcto = 0; codigo_ok = 1; state = OFF;
		:: time_out && !numero_correcto -> printf("Digito 3 introducido. Codigo erroneo\n"); time_out = 0; numero_correcto = 0; codigo_ok = 0; state = OFF;
		:: boton && !time_out -> printf("Digito incrementado\n"); boton = 0;
		:: skip;
		fi
	}
	od
}

active proctype fsm_luz(){ //Simulacion FSM luz
	if
	:: printf ("Luz ON\n");
	:: printf ("Luz OFF\n");
	fi
}

active proctype fsm_alarma(){ //Simulacion FSM Alarma
	if
	:: printf ("Alarma ON\n");
	:: printf ("Alarma OFF\n");
	:: printf ("Alerta!!! Intruso!!!\n");
	fi
}

active proctype actions(){
  do
	:: if
		:: presencia = 1;printf ("PRESENCIA\n");
		:: interruptor = 1;printf ("interruptor\n");
		:: boton = 1;printf ("boton\n");
		:: time_out = 1;printf ("time_out\n");
		:: codigo_ok = 1;printf ("CODIGO_OK\n");
		//:: skip -> skip;printf ("SKIP\n");
		fi
  od
}