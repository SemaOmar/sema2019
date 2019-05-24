	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM spec4 */
;
		;
		;
		;
		
	case 5: // STATE 13
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
		
	case 8: // STATE 13
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
		
	case 11: // STATE 13
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
		;
		;
		;
		;
		
	case 16: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Actions */

	case 17: // STATE 1
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_codigo */

	case 20: // STATE 1
		;
		now.codigo_ok = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 3
		;
		now.codigo_ok = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_luz */
;
		;
		;
		;
		
	case 27: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alarma */

	case 28: // STATE 1
		;
		now.state_alarma = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 2
		;
		now.alerta = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 7
		;
		now.presencia = trpt->bup.ovals[1];
		now.alerta = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 32: // STATE 17
		goto R999;

	case 33: // STATE 11
		;
		now.codigo_ok = trpt->bup.ovals[1];
		now.alerta = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 34: // STATE 15
		;
		now.codigo_ok = trpt->bup.ovals[1];
		now.state_alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 36: // STATE 23
		;
		now.codigo_ok = trpt->bup.ovals[1];
		now.state_alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 37: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;
	}

