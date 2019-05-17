
ltl spec1{ [] ( presencia -> <> ( state_luz == on ) ) }
ltl spec2{ [] ( ( state_luz == off && boton ) -> <> ( state_luz == on ) ) }
ltl spec3{ [] ( ( state_luz == on && boton ) -> <> ( state_luz == on ) ) }
//ltl spec4{ [] ( (( state_luz == on)  && ((!presencia) W (state_luz == off)) || timer) -> <> ( state_luz == off ) ) }

// Siguiendo el patron "P es true despues de Q" ----> [](!Q) | <>(Q & <>P))

ltl spec4{ []( ( !( ( state_luz == on)  && ( !presencia || boton || timer )) ) | <> (( ( state_luz == on)  && ( !presencia || boton || timer )) & <> state_luz == on ) ) }



mtype = {on,off};
mtype state_luz;

bit presencia;
bit boton;
bit timer;

active proctype fsm(){
  state_luz = off;
  timer = 0;
  do
  :: state_luz == off -> atomic{
       if
       :: (presencia || boton) -> state_luz = on; printf ("Enciende\n"); presencia = 0; boton = 0;
	   fi
     }
  :: state_luz == on -> atomic{
       if
       :: presencia -> printf ("Enciende\n"); presencia = 0;
	   :: boton       -> state_luz = off; printf ("Apaga\n"); boton = 0;
	   :: timer  	 -> printf ("Apaga\n"); state_luz = off; timer = 0;
	   fi
    }
  od
}

active proctype actions(){
  do
	::  if
		:: presencia = 1;printf ("PRESENCIA\n");
		:: boton = 1;printf ("BOTON\n");
		:: timer = 1;printf ("TIMER\n");
		:: skip;printf ("SKIP\n");
		fi
		printf("Estado: %e -- Presencia: %d -- Boton: %d\n\n\n", state_luz, presencia, boton);
  od
}