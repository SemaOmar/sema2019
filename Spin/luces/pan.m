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

		 /* CLAIM spec4 */
	case 3: // STATE 1 - _spin_nvr.tmp:36 - [(!((!(((state_luz==on)&&((!(presencia)||boton)||timer)))|334)))] (6:0:0 - 1)
		
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
		if (!( !(( !(((now.state_luz==2)&&(( !(((int)now.presencia))||((int)now.boton))||((int)now.timer))))|334))))
			continue;
		/* merge: assert(!(!((!(((state_luz==on)&&((!(presencia)||boton)||timer)))|334))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(( !(((now.state_luz==2)&&(( !(((int)now.presencia))||((int)now.boton))||((int)now.timer))))|334))), " !( !(( !(((state_luz==2)&&(( !(presencia)||boton)||timer)))|334)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:41 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM spec3 */
	case 5: // STATE 1 - _spin_nvr.tmp:25 - [((!(!(((state_luz==on)&&boton)))&&!((state_luz==on))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((now.state_luz==2)&&((int)now.boton))))&& !((now.state_luz==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:30 - [(!((state_luz==on)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((now.state_luz==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec2 */
	case 8: // STATE 1 - _spin_nvr.tmp:14 - [((!(!(((state_luz==off)&&boton)))&&!((state_luz==on))))] (0:0:0 - 1)
		
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
		reached[3][1] = 1;
		if (!(( !( !(((now.state_luz==1)&&((int)now.boton))))&& !((now.state_luz==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:19 - [(!((state_luz==on)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!( !((now.state_luz==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec1 */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(presencia))&&!((state_luz==on))))] (0:0:0 - 1)
		
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
		reached[2][1] = 1;
		if (!(( !( !(((int)now.presencia)))&& !((now.state_luz==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - _spin_nvr.tmp:8 - [(!((state_luz==on)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((now.state_luz==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC actions */
	case 14: // STATE 1 - luces.pml:42 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.presencia);
		now.presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - luces.pml:42 - [printf('PRESENCIA\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("PRESENCIA\n");
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - luces.pml:43 - [boton = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.boton);
		now.boton = 1;
#ifdef VAR_RANGES
		logval("boton", ((int)now.boton));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - luces.pml:43 - [printf('BOTON\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("BOTON\n");
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 5 - luces.pml:44 - [timer = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.timer);
		now.timer = 1;
#ifdef VAR_RANGES
		logval("timer", ((int)now.timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - luces.pml:44 - [printf('TIMER\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("TIMER\n");
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 7 - luces.pml:45 - [(1)] (11:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(1))
			continue;
		/* merge: printf('SKIP\\n')(0, 8, 11) */
		reached[1][8] = 1;
		Printf("SKIP\n");
		/* merge: .(goto)(0, 10, 11) */
		reached[1][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 11 - luces.pml:47 - [printf('Estado: %e -- Presencia: %d -- Boton: %d\\n\\n\\n',state_luz,presencia,boton)] (0:0:0 - 5)
		IfNotBlocked
		reached[1][11] = 1;
		Printf("Estado: %e -- Presencia: %d -- Boton: %d\n\n\n", now.state_luz, ((int)now.presencia), ((int)now.boton));
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 15 - luces.pml:49 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 23: // STATE 1 - luces.pml:21 - [state_luz = off] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.state_luz;
		now.state_luz = 1;
#ifdef VAR_RANGES
		logval("state_luz", now.state_luz);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 2 - luces.pml:22 - [timer = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.timer);
		now.timer = 0;
#ifdef VAR_RANGES
		logval("timer", ((int)now.timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 3 - luces.pml:24 - [((state_luz==off))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.state_luz==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 4 - luces.pml:26 - [((presencia||boton))] (27:0:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.presencia)||((int)now.boton))))
			continue;
		/* merge: state_luz = on(27, 5, 27) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_luz;
		now.state_luz = 2;
#ifdef VAR_RANGES
		logval("state_luz", now.state_luz);
#endif
		;
		/* merge: printf('Enciende\\n')(27, 6, 27) */
		reached[0][6] = 1;
		Printf("Enciende\n");
		/* merge: presencia = 0(27, 7, 27) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.presencia);
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		/* merge: boton = 0(27, 8, 27) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.boton);
		now.boton = 0;
#ifdef VAR_RANGES
		logval("boton", ((int)now.boton));
#endif
		;
		/* merge: .(goto)(27, 10, 27) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 27: // STATE 12 - luces.pml:29 - [((state_luz==on))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.state_luz==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 13 - luces.pml:31 - [(presencia)] (27:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((int)now.presencia)))
			continue;
		/* merge: printf('Enciende\\n')(27, 14, 27) */
		reached[0][14] = 1;
		Printf("Enciende\n");
		/* merge: presencia = 0(27, 15, 27) */
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.presencia);
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		/* merge: .(goto)(27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 29: // STATE 25 - luces.pml:35 - [.(goto)] (0:27:0 - 3)
		IfNotBlocked
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 30: // STATE 16 - luces.pml:32 - [(boton)] (27:0:2 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!(((int)now.boton)))
			continue;
		/* merge: state_luz = off(27, 17, 27) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state_luz;
		now.state_luz = 1;
#ifdef VAR_RANGES
		logval("state_luz", now.state_luz);
#endif
		;
		/* merge: printf('Apaga\\n')(27, 18, 27) */
		reached[0][18] = 1;
		Printf("Apaga\n");
		/* merge: boton = 0(27, 19, 27) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.boton);
		now.boton = 0;
#ifdef VAR_RANGES
		logval("boton", ((int)now.boton));
#endif
		;
		/* merge: .(goto)(27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 31: // STATE 20 - luces.pml:33 - [(timer)] (27:0:2 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((int)now.timer)))
			continue;
		/* merge: printf('Apaga\\n')(27, 21, 27) */
		reached[0][21] = 1;
		Printf("Apaga\n");
		/* merge: state_luz = off(27, 22, 27) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state_luz;
		now.state_luz = 1;
#ifdef VAR_RANGES
		logval("state_luz", now.state_luz);
#endif
		;
		/* merge: timer = 0(27, 23, 27) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer);
		now.timer = 0;
#ifdef VAR_RANGES
		logval("timer", ((int)now.timer));
#endif
		;
		/* merge: .(goto)(27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 32: // STATE 30 - luces.pml:37 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
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

