	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM spec4 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec3 */
;
		;
		;
		;
		
	case 7: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec2 */
;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec1 */
;
		;
		;
		;
		
	case 13: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC actions */

	case 14: // STATE 1
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 3
		;
		now.boton = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 5
		;
		now.timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		
	case 20: // STATE 7
		goto R999;
;
		;
		
	case 22: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */

	case 23: // STATE 1
		;
		now.state_luz = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 2
		;
		now.timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 8
		;
		now.boton = trpt->bup.ovals[2];
		now.presencia = trpt->bup.ovals[1];
		now.state_luz = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 28: // STATE 15
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;
;
		
	case 29: // STATE 25
		goto R999;

	case 30: // STATE 19
		;
		now.boton = trpt->bup.ovals[1];
		now.state_luz = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 31: // STATE 23
		;
		now.timer = trpt->bup.ovals[1];
		now.state_luz = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;
	}

