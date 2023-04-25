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

	case 5: // STATE 18
		;
		((P2 *)_this)->_4_5_I = trpt->bup.ovals[17];
		now.stones[16] = trpt->bup.ovals[16];
		now.stones[15] = trpt->bup.ovals[15];
		now.stones[14] = trpt->bup.ovals[14];
		now.stones[13] = trpt->bup.ovals[13];
		now.stones[12] = trpt->bup.ovals[12];
		now.stones[11] = trpt->bup.ovals[11];
		now.stones[10] = trpt->bup.ovals[10];
		now.stones[9] = trpt->bup.ovals[9];
		now.stones[8] = trpt->bup.ovals[8];
		now.stones[7] = trpt->bup.ovals[7];
		now.stones[6] = trpt->bup.ovals[6];
		now.stones[5] = trpt->bup.ovals[5];
		now.stones[4] = trpt->bup.ovals[4];
		now.stones[3] = trpt->bup.ovals[3];
		now.stones[2] = trpt->bup.ovals[2];
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 18);
		goto R999;

	case 6: // STATE 19
		;
	/* 0 */	((P2 *)_this)->_4_5_I = trpt->bup.oval;
		;
		;
		goto R999;

	case 7: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 23
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 24
		;
		((P2 *)_this)->_4_5_I = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 29
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
		now.stones[ Index((((P1 *)_this)->position-1), 17) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P1 *)_this)->position, 17) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 14: // STATE 12
		;
		((P1 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P1 *)_this)->position-2), 17) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P1 *)_this)->position, 17) ] = trpt->bup.ovals[0];
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
		now.stones[ Index((((P0 *)_this)->position+1), 17) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P0 *)_this)->position, 17) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 19: // STATE 12
		;
		((P0 *)_this)->position = trpt->bup.ovals[2];
		now.stones[ Index((((P0 *)_this)->position+2), 17) ] = trpt->bup.ovals[1];
		now.stones[ Index(((P0 *)_this)->position, 17) ] = trpt->bup.ovals[0];
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

