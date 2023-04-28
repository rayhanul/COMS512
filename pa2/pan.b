	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM part2 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Intruder */

	case 5: // STATE 1
		;
	/* 0 */	((P2 *)_this)->msg = trpt->bup.ovals[5];
		XX = 1;
		unrecv(now.network, XX-1, 0, ((P2 *)_this)->msg, 1);
		unrecv(now.network, XX-1, 1, trpt->bup.ovals[1], 0);
		unrecv(now.network, XX-1, 2, ((P2 *)_this)->data.key, 0);
		unrecv(now.network, XX-1, 3, ((P2 *)_this)->data.info1, 0);
		unrecv(now.network, XX-1, 4, ((P2 *)_this)->data.info2, 0);
		((P2 *)_this)->msg = trpt->bup.ovals[0];
		((P2 *)_this)->data.key = trpt->bup.ovals[2];
		((P2 *)_this)->data.info1 = trpt->bup.ovals[3];
		((P2 *)_this)->data.info2 = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 6: // STATE 4
		;
		((P2 *)_this)->intercepted.info2 = trpt->bup.ovals[2];
		((P2 *)_this)->intercepted.info1 = trpt->bup.ovals[1];
		((P2 *)_this)->intercepted.key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 9: // STATE 10
		;
		now.knows_nonceA = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 12: // STATE 17
		;
		now.knows_nonceB = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 26
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 27
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 28
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 31
		;
		((P2 *)_this)->recpt = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 32
		;
		((P2 *)_this)->recpt = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 37
		;
		((P2 *)_this)->data.info2 = trpt->bup.ovals[2];
		((P2 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P2 *)_this)->data.key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 19: // STATE 38
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 39
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 40
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 42
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 44
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 45
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 48
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 49
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 50
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 52
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 54
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 55
		;
		((P2 *)_this)->data.info2 = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 58
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 59
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 60
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 62
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 64
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 65
		;
		((P2 *)_this)->data.key = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 70
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 44: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Bob */

	case 45: // STATE 1
		;
		XX = 1;
		unrecv(now.network, XX-1, 0, 12, 1);
		unrecv(now.network, XX-1, 1, 5, 0);
		unrecv(now.network, XX-1, 2, ((P1 *)_this)->data.key, 0);
		unrecv(now.network, XX-1, 3, ((P1 *)_this)->data.info1, 0);
		unrecv(now.network, XX-1, 4, ((P1 *)_this)->data.info2, 0);
		((P1 *)_this)->data.key = trpt->bup.ovals[0];
		((P1 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P1 *)_this)->data.info2 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 47: // STATE 3
		;
		now.partnerB = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 4
		;
		((P1 *)_this)->pnonce = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 5
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 14
		;
		((P1 *)_this)->data2.info2 = trpt->bup.ovals[3];
		((P1 *)_this)->data2.info1 = trpt->bup.ovals[2];
		((P1 *)_this)->data2.key = trpt->bup.ovals[1];
		;
		((P1 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 51: // STATE 7
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 14
		;
		((P1 *)_this)->data2.info2 = trpt->bup.ovals[3];
		((P1 *)_this)->data2.info1 = trpt->bup.ovals[2];
		((P1 *)_this)->data2.key = trpt->bup.ovals[1];
		;
		((P1 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 53: // STATE 14
		;
		((P1 *)_this)->data2.info2 = trpt->bup.ovals[2];
		((P1 *)_this)->data2.info1 = trpt->bup.ovals[1];
		((P1 *)_this)->data2.key = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 54: // STATE 15
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 55: // STATE 16
		;
		XX = 1;
		unrecv(now.network, XX-1, 0, 10, 1);
		unrecv(now.network, XX-1, 1, 5, 0);
		unrecv(now.network, XX-1, 2, ((P1 *)_this)->data.key, 0);
		unrecv(now.network, XX-1, 3, ((P1 *)_this)->data.info1, 0);
		unrecv(now.network, XX-1, 4, ((P1 *)_this)->data.info2, 0);
		((P1 *)_this)->data.key = trpt->bup.ovals[0];
		((P1 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P1 *)_this)->data.info2 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 57: // STATE 18
		;
		now.statusB = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alice */

	case 59: // STATE 1
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data.key = trpt->bup.ovals[1];
		((P0 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 61: // STATE 3
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data.key = trpt->bup.ovals[1];
		((P0 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 63: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[2];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P0 *)_this)->data.key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 64: // STATE 10
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 65: // STATE 11
		;
		XX = 1;
		unrecv(now.network, XX-1, 0, 11, 1);
		unrecv(now.network, XX-1, 1, 6, 0);
		unrecv(now.network, XX-1, 2, ((P0 *)_this)->data2.key, 0);
		unrecv(now.network, XX-1, 3, ((P0 *)_this)->data2.info1, 0);
		unrecv(now.network, XX-1, 4, ((P0 *)_this)->data2.info2, 0);
		((P0 *)_this)->data2.key = trpt->bup.ovals[0];
		((P0 *)_this)->data2.info1 = trpt->bup.ovals[1];
		((P0 *)_this)->data2.info2 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 66: // STATE 16
		;
		((P0 *)_this)->data3.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data3.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data3.key = trpt->bup.ovals[1];
		((P0 *)_this)->pnonce = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 67: // STATE 17
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 68: // STATE 18
		;
		now.statusA = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;
	}

