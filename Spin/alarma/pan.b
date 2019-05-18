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

	case 18: // STATE 2
		;
		now.codigo = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alarma */

	case 21: // STATE 1
		;
		now.state_alarma = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 2
		;
		now.alerta = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 7
		;
		now.presencia = trpt->bup.ovals[1];
		now.alerta = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 25: // STATE 17
		goto R999;

	case 26: // STATE 11
		;
		now.codigo = trpt->bup.ovals[1];
		now.alerta = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 15
		;
		now.codigo = trpt->bup.ovals[1];
		now.state_alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 29: // STATE 23
		;
		now.codigo = trpt->bup.ovals[1];
		now.state_alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 30: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;
	}

