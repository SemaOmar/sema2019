ltl spec1{	[] (((state_alarma == ON) && presencia && (!codigo)W (alerta == 1)) -> <> (alerta == 1))}
ltl spec2{	[] (((state_alarma == ON) && codigo && alerta) -> <> (alerta == 0))}
ltl spec3{	[] (((state_alarma == ON) && codigo &&  (!alerta)) -> <> (state_alarma == OFF))}
ltl spec4{	[] (((state_alarma == OFF) && codigo) -> <> (state_alarma == ON))}

mtype = {ON , OFF} ;
bit presencia;
bit codigo;
bit alerta;
mtype state_alarma = OFF;

active proctype Alarma(){
		state_alarma = OFF;
		alerta = 0;	
		do
		::	(state_alarma == ON) -> atomic {
			if
			::	(presencia && !codigo)-> alerta = 1; printf("Sirena activada \n"); presencia = 0;
			::	(alerta && codigo) -> alerta = 0; printf("Sirena desactivada \n"); codigo = 0;
			::	((!alerta) && codigo) -> state_alarma = OFF; printf("Alarma apagada \n"); codigo = 0;
			fi
			}
		::	(state_alarma == OFF) -> atomic {
			if			
			::	codigo -> state_alarma = ON ; printf("Alarma encendida \n"); codigo = 0;
			fi
			}
		od
}

active proctype Actions(){
	do
	::	if
		::presencia = 1;
		::	codigo = 1;
		::	skip ;
		fi
		printf("estado: %e , presencia: %d, codigo: %d, alerta: %d  \n",state_alarma , presencia , codigo , alerta);
	od
	
}