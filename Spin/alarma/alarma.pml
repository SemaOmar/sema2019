ltl spec1{	[] (((state_alarma == ON) && presencia && (!codigo_ok)W (alerta == 1)) -> <> (alerta == 1))}
ltl spec2{	[] (((state_alarma == ON) && codigo_ok && alerta) -> <> (alerta == 0))}
ltl spec3{	[] (((state_alarma == ON) && codigo_ok &&  (!alerta)) -> <> (state_alarma == OFF))}
ltl spec4{	[] (((state_alarma == OFF) && codigo_ok) -> <> (state_alarma == ON))}

// Estados
mtype = {ON , OFF} ;
mtype state_alarma = OFF;

// Entradas del sistema
bit presencia;	// Indica si el sensor PIR ha detectado la presencia de una persona
bit interruptor;	// Interruptor de la luz
bit boton;			// Boton de introduccion del codigo_ok

// Variables internas
bit codigo_ok;
bit alerta;

active proctype Alarma(){
		state_alarma = OFF;
		alerta = 0;	
		do
		::	(state_alarma == ON) -> atomic {
			if
			::	(presencia && !codigo_ok)-> alerta = 1; printf("Sirena activada \n"); presencia = 0;
			::	(alerta && codigo_ok) -> alerta = 0; printf("Sirena desactivada \n"); codigo_ok = 0;
			::	((!alerta) && codigo_ok) -> state_alarma = OFF; printf("Alarma apagada \n"); codigo_ok = 0;
			fi
		}
		::	(state_alarma == OFF) -> atomic {
			if			
			::	codigo_ok -> state_alarma = ON ; printf("Alarma encendida \n"); codigo_ok = 0;
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

active proctype fsm_codigo(){ //Simulacion FSM Codigo
	if
	:: codigo_ok = 1;printf ("Codogo OK\n");
	:: codigo_ok = 0;printf ("Codigo ERROR\n");
	fi
}

active proctype Actions(){
	do
	::	if
		:: presencia = 1;
		:: skip ;
		fi
		printf("estado: %e , presencia: %d, codigo_ok: %d, alerta: %d  \n",state_alarma , presencia , codigo_ok , alerta);
	od
	
}