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

	case 5: // STATE 1
		;
		now.stones[0] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 2
		;
		now.stones[1] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 3
		;
		now.stones[2] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		now.stones[3] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 5
		;
		now.stones[4] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 6
		;
		now.stones[5] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 7
		;
		now.stones[6] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_process */
;
		;
		;
		;
		
	case 15: // STATE 5
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 17: // STATE 11
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 20: // STATE 20
		;
		now.stones[0] = trpt->bup.ovals[1];
		now.stones[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 22: // STATE 26
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 24: // STATE 32
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 27: // STATE 41
		;
		now.stones[0] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 29: // STATE 47
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 31: // STATE 53
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 33: // STATE 59
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 36: // STATE 68
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 38: // STATE 74
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 40: // STATE 80
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: // STATE 86
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 45: // STATE 95
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 47: // STATE 101
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 49: // STATE 107
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 51: // STATE 113
		;
		now.stones[6] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 54: // STATE 122
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 56: // STATE 128
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: // STATE 134
		;
		now.stones[6] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 61: // STATE 143
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 63: // STATE 149
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 64: // STATE 157
		;
		p_restor(II);
		;
		;
		goto R999;
	}

