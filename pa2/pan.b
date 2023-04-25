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

	case 10: // STATE 19
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 20
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 21
		;
		((P2 *)_this)->msg = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 24
		;
		((P2 *)_this)->recpt = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 25
		;
		((P2 *)_this)->recpt = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 30
		;
		((P2 *)_this)->data.info2 = trpt->bup.ovals[2];
		((P2 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P2 *)_this)->data.key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 16: // STATE 31
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 32
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 33
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 35
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 37
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 38
		;
		((P2 *)_this)->data.info1 = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 43
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 25: // STATE 47
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Bob */

	case 26: // STATE 1
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

	case 27: // STATE 2
		;
		now.partnerB = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 8
		;
		((P1 *)_this)->data2.info2 = trpt->bup.ovals[3];
		((P1 *)_this)->data2.info1 = trpt->bup.ovals[2];
		((P1 *)_this)->data2.key = trpt->bup.ovals[1];
		;
		((P1 *)_this)->pnonce = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 29: // STATE 9
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 30: // STATE 10
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
		
	case 32: // STATE 12
		;
		now.statusB = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alice */

	case 34: // STATE 1
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data.key = trpt->bup.ovals[1];
		((P0 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 36: // STATE 3
		;
		now.partnerA = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data.key = trpt->bup.ovals[1];
		((P0 *)_this)->pkey = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 38: // STATE 9
		;
		((P0 *)_this)->data.info2 = trpt->bup.ovals[2];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P0 *)_this)->data.key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 39: // STATE 10
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 40: // STATE 11
		;
		XX = 1;
		unrecv(now.network, XX-1, 0, 11, 1);
		unrecv(now.network, XX-1, 1, 6, 0);
		unrecv(now.network, XX-1, 2, ((P0 *)_this)->data.key, 0);
		unrecv(now.network, XX-1, 3, ((P0 *)_this)->data.info1, 0);
		unrecv(now.network, XX-1, 4, ((P0 *)_this)->data.info2, 0);
		((P0 *)_this)->data.key = trpt->bup.ovals[0];
		((P0 *)_this)->data.info1 = trpt->bup.ovals[1];
		((P0 *)_this)->data.info2 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 41: // STATE 17
		;
		((P0 *)_this)->data2.info2 = trpt->bup.ovals[3];
		((P0 *)_this)->data2.info1 = trpt->bup.ovals[2];
		((P0 *)_this)->data2.key = trpt->bup.ovals[1];
		;
		((P0 *)_this)->pnonce = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 42: // STATE 18
		;
		_m = unsend(now.network);
		;
		goto R999;

	case 43: // STATE 19
		;
		now.statusA = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;
	}

