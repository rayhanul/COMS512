	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ltl_0 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 8
		;
		((P2 *)_this)->_4_5_I = trpt->bup.ovals[7];
		now.stones[6] = trpt->bup.ovals[6];
		now.stones[5] = trpt->bup.ovals[5];
		now.stones[4] = trpt->bup.ovals[4];
		now.stones[3] = trpt->bup.ovals[3];
		now.stones[2] = trpt->bup.ovals[2];
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 6: // STATE 9
		;
	/* 0 */	((P2 *)_this)->_4_5_I = trpt->bup.oval;
		;
		;
		goto R999;

	case 7: // STATE 12
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 13
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 14
		;
		((P2 *)_this)->_4_5_I = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC femaleFrog */
;
		;
		
	case 12: // STATE 5
		;
		((P1 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P1 *)_this)->position-1), 7) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P1 *)_this)->position, 7) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 14: // STATE 12
		;
		((P1 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P1 *)_this)->position-2), 7) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P1 *)_this)->position, 7) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 15: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC maleFrog */
;
		;
		
	case 17: // STATE 5
		;
		((P0 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P0 *)_this)->position+1), 7) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P0 *)_this)->position, 7) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 19: // STATE 12
		;
		((P0 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P0 *)_this)->position+2), 7) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P0 *)_this)->position, 7) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 20: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;
	}

