	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM spec5 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec4 */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec3 */
;
		
	case 7: // STATE 1
		goto R999;

	case 8: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec2 */
;
		
	case 9: // STATE 1
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM spec1 */
;
		
	case 11: // STATE 1
		goto R999;

	case 12: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC actions */

	case 13: // STATE 1
		;
		presencia = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 3
		;
		interruptor = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 5
		;
		now.boton = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 7
		;
		now.time_out = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 9
		;
		now.codigo_ok = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_alarma */
;
		;
		;
		;
		;
		;
		
	case 27: // STATE 6
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
		
	case 30: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC codigo */

	case 31: // STATE 1
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 7
		;
		now.state = trpt->bup.ovals[2];
		now.time_out = trpt->bup.ovals[1];
		now.boton = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 34: // STATE 10
		goto R999;
;
		
	case 35: // STATE 8
		goto R999;
;
		;
		
	case 37: // STATE 16
		;
		now.state = trpt->bup.ovals[1];
		now.time_out = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 38: // STATE 22
		goto R999;

	case 39: // STATE 19
		;
		now.boton = trpt->bup.oval;
		;
		goto R999;
;
		
	case 40: // STATE 20
		goto R999;
;
		;
		
	case 42: // STATE 28
		;
		now.state = trpt->bup.ovals[1];
		now.time_out = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 43: // STATE 34
		goto R999;

	case 44: // STATE 31
		;
		now.boton = trpt->bup.oval;
		;
		goto R999;
;
		
	case 45: // STATE 32
		goto R999;
;
		;
		
	case 47: // STATE 42
		;
		now.state = trpt->bup.ovals[3];
		now.codigo_ok = trpt->bup.ovals[2];
		now.numero_correcto = trpt->bup.ovals[1];
		now.time_out = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 48: // STATE 54
		goto R999;

	case 49: // STATE 48
		;
		now.state = trpt->bup.ovals[3];
		now.codigo_ok = trpt->bup.ovals[2];
		now.numero_correcto = trpt->bup.ovals[1];
		now.time_out = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 50: // STATE 51
		;
		now.boton = trpt->bup.oval;
		;
		goto R999;
;
		
	case 51: // STATE 52
		goto R999;

	case 52: // STATE 59
		;
		p_restor(II);
		;
		;
		goto R999;
	}

