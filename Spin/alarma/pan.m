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
	case 3: // STATE 1 - _spin_nvr.tmp:41 - [((!(!(((state_alarma==OFF)&&codigo)))&&!((state_alarma==ON))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((now.state_alarma==1)&&((int)now.codigo))))&& !((now.state_alarma==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:46 - [(!((state_alarma==ON)))] (0:0:0 - 1)
		
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
		reached[5][8] = 1;
		if (!( !((now.state_alarma==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:48 - [-end-] (0:0:0 - 1)
		
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
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM spec3 */
	case 6: // STATE 1 - _spin_nvr.tmp:30 - [((!(!((((state_alarma==ON)&&codigo)&&!(alerta))))&&!((state_alarma==OFF))))] (0:0:0 - 1)
		
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
		if (!(( !( !((((now.state_alarma==2)&&((int)now.codigo))&& !(((int)now.alerta)))))&& !((now.state_alarma==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:35 - [(!((state_alarma==OFF)))] (0:0:0 - 1)
		
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
		if (!( !((now.state_alarma==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
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
	case 9: // STATE 1 - _spin_nvr.tmp:19 - [((!(!((((state_alarma==ON)&&codigo)&&alerta)))&&!((alerta==0))))] (0:0:0 - 1)
		
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
		if (!(( !( !((((now.state_alarma==2)&&((int)now.codigo))&&((int)now.alerta))))&& !((((int)now.alerta)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:24 - [(!((alerta==0)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.alerta)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
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
	case 12: // STATE 1 - _spin_nvr.tmp:3 - [(((!(codigo)&&!((alerta==1)))&&((state_alarma==ON)&&presencia)))] (0:0:0 - 1)
		
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
		if (!((( !(((int)now.codigo))&& !((((int)now.alerta)==1)))&&((now.state_alarma==2)&&((int)now.presencia)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - _spin_nvr.tmp:4 - [(((!(codigo)&&!((alerta==1)))&&((state_alarma==ON)&&presencia)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][3] = 1;
		if (!((( !(((int)now.codigo))&& !((((int)now.alerta)==1)))&&((now.state_alarma==2)&&((int)now.presencia)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - _spin_nvr.tmp:9 - [((!(codigo)&&!((alerta==1))))] (0:0:0 - 1)
		
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
		reached[2][10] = 1;
		if (!(( !(((int)now.codigo))&& !((((int)now.alerta)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 15 - _spin_nvr.tmp:13 - [((!(codigo)&&!((alerta==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][15] = 1;
		if (!(( !(((int)now.codigo))&& !((((int)now.alerta)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 20 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Actions */
	case 17: // STATE 1 - alarma.pml:34 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.presencia);
		now.presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 2 - alarma.pml:35 - [codigo = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.codigo);
		now.codigo = 1;
#ifdef VAR_RANGES
		logval("codigo", ((int)now.codigo));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - alarma.pml:38 - [printf('estado: %e , presencia: %d, codigo: %d, alerta: %d  \\n',state_alarma,presencia,codigo,alerta)] (0:0:0 - 4)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("estado: %e , presencia: %d, codigo: %d, alerta: %d  \n", now.state_alarma, ((int)now.presencia), ((int)now.codigo), ((int)now.alerta));
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 10 - alarma.pml:41 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alarma */
	case 21: // STATE 1 - alarma.pml:13 - [state_alarma = OFF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.state_alarma;
		now.state_alarma = 1;
#ifdef VAR_RANGES
		logval("state_alarma", now.state_alarma);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 2 - alarma.pml:14 - [alerta = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.alerta);
		now.alerta = 0;
#ifdef VAR_RANGES
		logval("alerta", ((int)now.alerta));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 3 - alarma.pml:16 - [((state_alarma==ON))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.state_alarma==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 4 - alarma.pml:18 - [((presencia&&!(codigo)))] (27:0:2 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.presencia)&& !(((int)now.codigo)))))
			continue;
		/* merge: alerta = 1(27, 5, 27) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.alerta);
		now.alerta = 1;
#ifdef VAR_RANGES
		logval("alerta", ((int)now.alerta));
#endif
		;
		/* merge: printf('Sirena activada \\n')(27, 6, 27) */
		reached[0][6] = 1;
		Printf("Sirena activada \n");
		/* merge: presencia = 0(27, 7, 27) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.presencia);
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		/* merge: .(goto)(27, 17, 27) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 25: // STATE 17 - alarma.pml:22 - [.(goto)] (0:27:0 - 3)
		IfNotBlocked
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 8 - alarma.pml:19 - [((alerta&&codigo))] (27:0:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.alerta)&&((int)now.codigo))))
			continue;
		/* merge: alerta = 0(27, 9, 27) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.alerta);
		now.alerta = 0;
#ifdef VAR_RANGES
		logval("alerta", ((int)now.alerta));
#endif
		;
		/* merge: printf('Sirena desactivada \\n')(27, 10, 27) */
		reached[0][10] = 1;
		Printf("Sirena desactivada \n");
		/* merge: codigo = 0(27, 11, 27) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.codigo);
		now.codigo = 0;
#ifdef VAR_RANGES
		logval("codigo", ((int)now.codigo));
#endif
		;
		/* merge: .(goto)(27, 17, 27) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 27: // STATE 12 - alarma.pml:20 - [((!(alerta)&&codigo))] (27:0:2 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(( !(((int)now.alerta))&&((int)now.codigo))))
			continue;
		/* merge: state_alarma = OFF(27, 13, 27) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state_alarma;
		now.state_alarma = 1;
#ifdef VAR_RANGES
		logval("state_alarma", now.state_alarma);
#endif
		;
		/* merge: printf('Alarma apagada \\n')(27, 14, 27) */
		reached[0][14] = 1;
		Printf("Alarma apagada \n");
		/* merge: codigo = 0(27, 15, 27) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.codigo);
		now.codigo = 0;
#ifdef VAR_RANGES
		logval("codigo", ((int)now.codigo));
#endif
		;
		/* merge: .(goto)(27, 17, 27) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 28: // STATE 19 - alarma.pml:23 - [((state_alarma==OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.state_alarma==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 20 - alarma.pml:25 - [(codigo)] (27:0:2 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((int)now.codigo)))
			continue;
		/* merge: state_alarma = ON(27, 21, 27) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state_alarma;
		now.state_alarma = 2;
#ifdef VAR_RANGES
		logval("state_alarma", now.state_alarma);
#endif
		;
		/* merge: printf('Alarma encendida \\n')(27, 22, 27) */
		reached[0][22] = 1;
		Printf("Alarma encendida \n");
		/* merge: codigo = 0(27, 23, 27) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.codigo);
		now.codigo = 0;
#ifdef VAR_RANGES
		logval("codigo", ((int)now.codigo));
#endif
		;
		/* merge: .(goto)(27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 30 - alarma.pml:29 - [-end-] (0:0:0 - 1)
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

