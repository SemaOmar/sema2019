#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM spec5 */
	case 3: // STATE 1 - _spin_nvr.tmp:39 - [(!((!(((state==DIG3)&&numero_correcto))|334)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !(( !(((now.state==1)&&((int)now.numero_correcto)))|334))))
			continue;
		/* merge: assert(!(!((!(((state==DIG3)&&numero_correcto))|334))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !(( !(((now.state==1)&&((int)now.numero_correcto)))|334))), " !( !(( !(((state==1)&&numero_correcto))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec4 */
	case 5: // STATE 1 - _spin_nvr.tmp:30 - [(!((!(((state==DIG3)&&time_out))|334)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(( !(((now.state==1)&&((int)now.time_out)))|334))))
			continue;
		/* merge: assert(!(!((!(((state==DIG3)&&time_out))|334))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !(( !(((now.state==1)&&((int)now.time_out)))|334))), " !( !(( !(((state==1)&&time_out))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec3 */
	case 7: // STATE 1 - _spin_nvr.tmp:21 - [(!((!(((state==DIG2)&&time_out))|334)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(( !(((now.state==2)&&((int)now.time_out)))|334))))
			continue;
		/* merge: assert(!(!((!(((state==DIG2)&&time_out))|334))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !(( !(((now.state==2)&&((int)now.time_out)))|334))), " !( !(( !(((state==2)&&time_out))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec2 */
	case 9: // STATE 1 - _spin_nvr.tmp:12 - [(!((!(((state==DIG1)&&time_out))|334)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(( !(((now.state==3)&&((int)now.time_out)))|334))))
			continue;
		/* merge: assert(!(!((!(((state==DIG1)&&time_out))|334))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(( !(((now.state==3)&&((int)now.time_out)))|334))), " !( !(( !(((state==3)&&time_out))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec1 */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [(!((!(((state==OFF)&&pulsacion))|334)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(( !(((now.state==4)&&((int)now.pulsacion)))|334))))
			continue;
		/* merge: assert(!(!((!(((state==OFF)&&pulsacion))|334))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(( !(((now.state==4)&&((int)now.pulsacion)))|334))), " !( !(( !(((state==4)&&pulsacion))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC actions */
	case 13: // STATE 1 - codigo.pml:77 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((int)presencia);
		presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", ((int)presencia));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - codigo.pml:77 - [printf('PRESENCIA\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		Printf("PRESENCIA\n");
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - codigo.pml:78 - [boton = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)boton);
		boton = 1;
#ifdef VAR_RANGES
		logval("boton", ((int)boton));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 4 - codigo.pml:78 - [printf('BOTON\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		Printf("BOTON\n");
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - codigo.pml:79 - [pulsacion = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pulsacion);
		now.pulsacion = 1;
#ifdef VAR_RANGES
		logval("pulsacion", ((int)now.pulsacion));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - codigo.pml:79 - [printf('PULSACION\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		Printf("PULSACION\n");
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 7 - codigo.pml:80 - [time_out = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		(trpt+1)->bup.oval = ((int)now.time_out);
		now.time_out = 1;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - codigo.pml:80 - [printf('time_out\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		Printf("time_out\n");
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 9 - codigo.pml:81 - [codigo_ok = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		(trpt+1)->bup.oval = ((int)now.codigo_ok);
		now.codigo_ok = 1;
#ifdef VAR_RANGES
		logval("codigo_ok", ((int)now.codigo_ok));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 10 - codigo.pml:81 - [printf('CODIGO_OK\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		Printf("CODIGO_OK\n");
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 16 - codigo.pml:85 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_alarma */
	case 24: // STATE 1 - codigo.pml:68 - [printf('Alarma ON\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		Printf("Alarma ON\n");
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - codigo.pml:69 - [printf('Alarma OFF\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		Printf("Alarma OFF\n");
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 3 - codigo.pml:70 - [printf('Alerta!!! Intruso!!!\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		Printf("Alerta!!! Intruso!!!\n");
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 6 - codigo.pml:72 - [-end-] (0:0:0 - 4)
		IfNotBlocked
		reached[2][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_luz */
	case 28: // STATE 1 - codigo.pml:61 - [printf('Luz ON\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Luz ON\n");
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 2 - codigo.pml:62 - [printf('Luz OFF\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Luz OFF\n");
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 5 - codigo.pml:64 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC codigo */
	case 31: // STATE 1 - codigo.pml:25 - [state = OFF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 2 - codigo.pml:28 - [((state==OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 3 - codigo.pml:30 - [(pulsacion)] (56:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.pulsacion)))
			continue;
		/* merge: printf('Introduccion Codigo\\n')(56, 4, 56) */
		reached[0][4] = 1;
		Printf("Introduccion Codigo\n");
		/* merge: pulsacion = 0(56, 5, 56) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pulsacion);
		now.pulsacion = 0;
#ifdef VAR_RANGES
		logval("pulsacion", ((int)now.pulsacion));
#endif
		;
		/* merge: time_out = 0(56, 6, 56) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.time_out);
		now.time_out = 0;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		/* merge: state = DIG1(56, 7, 56) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(56, 10, 56) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 34: // STATE 10 - codigo.pml:33 - [.(goto)] (0:56:0 - 2)
		IfNotBlocked
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 8 - codigo.pml:31 - [(1)] (56:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(56, 10, 56) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 12 - codigo.pml:34 - [((state==DIG1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 13 - codigo.pml:36 - [(time_out)] (56:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((int)now.time_out)))
			continue;
		/* merge: printf('Digito 1 introducido\\n')(56, 14, 56) */
		reached[0][14] = 1;
		Printf("Digito 1 introducido\n");
		/* merge: time_out = 0(56, 15, 56) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.time_out);
		now.time_out = 0;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		/* merge: state = DIG2(56, 16, 56) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 38: // STATE 22 - codigo.pml:40 - [.(goto)] (0:56:0 - 3)
		IfNotBlocked
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 17 - codigo.pml:37 - [((pulsacion&&!(time_out)))] (56:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)now.pulsacion)&& !(((int)now.time_out)))))
			continue;
		/* merge: printf('Digito incrementado\\n')(56, 18, 56) */
		reached[0][18] = 1;
		Printf("Digito incrementado\n");
		/* merge: pulsacion = 0(56, 19, 56) */
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.pulsacion);
		now.pulsacion = 0;
#ifdef VAR_RANGES
		logval("pulsacion", ((int)now.pulsacion));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 20 - codigo.pml:38 - [(1)] (56:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(56, 22, 56) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 24 - codigo.pml:41 - [((state==DIG2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 25 - codigo.pml:43 - [(time_out)] (56:0:2 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!(((int)now.time_out)))
			continue;
		/* merge: printf('Digito 2 introducido\\n')(56, 26, 56) */
		reached[0][26] = 1;
		Printf("Digito 2 introducido\n");
		/* merge: time_out = 0(56, 27, 56) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.time_out);
		now.time_out = 0;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		/* merge: state = DIG3(56, 28, 56) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(56, 34, 56) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 43: // STATE 34 - codigo.pml:47 - [.(goto)] (0:56:0 - 3)
		IfNotBlocked
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 44: // STATE 29 - codigo.pml:44 - [((pulsacion&&!(time_out)))] (56:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.pulsacion)&& !(((int)now.time_out)))))
			continue;
		/* merge: printf('Digito incrementado\\n')(56, 30, 56) */
		reached[0][30] = 1;
		Printf("Digito incrementado\n");
		/* merge: pulsacion = 0(56, 31, 56) */
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((int)now.pulsacion);
		now.pulsacion = 0;
#ifdef VAR_RANGES
		logval("pulsacion", ((int)now.pulsacion));
#endif
		;
		/* merge: .(goto)(56, 34, 56) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 45: // STATE 32 - codigo.pml:45 - [(1)] (56:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(56, 34, 56) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 36 - codigo.pml:48 - [((state==DIG3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 37 - codigo.pml:50 - [((time_out&&numero_correcto))] (56:0:4 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.time_out)&&((int)now.numero_correcto))))
			continue;
		/* merge: printf('Digito 3 introducido. Codigo correcto\\n')(56, 38, 56) */
		reached[0][38] = 1;
		Printf("Digito 3 introducido. Codigo correcto\n");
		/* merge: time_out = 0(56, 39, 56) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.time_out);
		now.time_out = 0;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		/* merge: numero_correcto = 0(56, 40, 56) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.numero_correcto);
		now.numero_correcto = 0;
#ifdef VAR_RANGES
		logval("numero_correcto", ((int)now.numero_correcto));
#endif
		;
		/* merge: codigo_ok = 1(56, 41, 56) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.codigo_ok);
		now.codigo_ok = 1;
#ifdef VAR_RANGES
		logval("codigo_ok", ((int)now.codigo_ok));
#endif
		;
		/* merge: state = OFF(56, 42, 56) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[3] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 48: // STATE 54 - codigo.pml:55 - [.(goto)] (0:56:0 - 4)
		IfNotBlocked
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 43 - codigo.pml:51 - [((time_out&&!(numero_correcto)))] (56:0:4 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((((int)now.time_out)&& !(((int)now.numero_correcto)))))
			continue;
		/* merge: printf('Digito 3 introducido. Codigo erroneo\\n')(56, 44, 56) */
		reached[0][44] = 1;
		Printf("Digito 3 introducido. Codigo erroneo\n");
		/* merge: time_out = 0(56, 45, 56) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.time_out);
		now.time_out = 0;
#ifdef VAR_RANGES
		logval("time_out", ((int)now.time_out));
#endif
		;
		/* merge: numero_correcto = 0(56, 46, 56) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.numero_correcto);
		now.numero_correcto = 0;
#ifdef VAR_RANGES
		logval("numero_correcto", ((int)now.numero_correcto));
#endif
		;
		/* merge: codigo_ok = 0(56, 47, 56) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.codigo_ok);
		now.codigo_ok = 0;
#ifdef VAR_RANGES
		logval("codigo_ok", ((int)now.codigo_ok));
#endif
		;
		/* merge: state = OFF(56, 48, 56) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[3] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 50: // STATE 49 - codigo.pml:52 - [((pulsacion&&!(time_out)))] (56:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((int)now.pulsacion)&& !(((int)now.time_out)))))
			continue;
		/* merge: printf('Digito incrementado\\n')(56, 50, 56) */
		reached[0][50] = 1;
		Printf("Digito incrementado\n");
		/* merge: pulsacion = 0(56, 51, 56) */
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.pulsacion);
		now.pulsacion = 0;
#ifdef VAR_RANGES
		logval("pulsacion", ((int)now.pulsacion));
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 52 - codigo.pml:53 - [(1)] (56:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(56, 54, 56) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 52: // STATE 59 - codigo.pml:57 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

