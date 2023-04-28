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
		now.stones[7] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 9
		;
		now.stones[8] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 10
		;
		now.stones[9] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 11
		;
		now.stones[10] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 12
		;
		now.stones[11] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 13
		;
		now.stones[12] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 14
		;
		now.stones[13] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 15
		;
		now.stones[14] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 16
		;
		now.stones[15] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 17
		;
		now.stones[16] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		now.stones[17] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 19
		;
		now.stones[18] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 20
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
		
	case 27: // STATE 5
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 29: // STATE 11
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
		
	case 32: // STATE 20
		;
		now.stones[0] = trpt->bup.ovals[1];
		now.stones[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 34: // STATE 26
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 36: // STATE 32
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
		
	case 39: // STATE 41
		;
		now.stones[0] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 41: // STATE 47
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 43: // STATE 53
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 45: // STATE 59
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
		
	case 48: // STATE 68
		;
		now.stones[1] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 50: // STATE 74
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: // STATE 80
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 54: // STATE 86
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
		
	case 57: // STATE 95
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 59: // STATE 101
		;
		now.stones[2] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 61: // STATE 107
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 63: // STATE 113
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
		
	case 66: // STATE 122
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 68: // STATE 128
		;
		now.stones[3] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 70: // STATE 134
		;
		now.stones[6] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 72: // STATE 140
		;
		now.stones[7] = trpt->bup.ovals[1];
		now.stones[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 75: // STATE 149
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 77: // STATE 155
		;
		now.stones[4] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 79: // STATE 161
		;
		now.stones[7] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 81: // STATE 167
		;
		now.stones[8] = trpt->bup.ovals[1];
		now.stones[6] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 84: // STATE 176
		;
		now.stones[6] = trpt->bup.ovals[1];
		now.stones[7] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 86: // STATE 182
		;
		now.stones[5] = trpt->bup.ovals[1];
		now.stones[7] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 88: // STATE 188
		;
		now.stones[8] = trpt->bup.ovals[1];
		now.stones[7] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 90: // STATE 194
		;
		now.stones[9] = trpt->bup.ovals[1];
		now.stones[7] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 93: // STATE 203
		;
		now.stones[7] = trpt->bup.ovals[1];
		now.stones[8] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 95: // STATE 209
		;
		now.stones[6] = trpt->bup.ovals[1];
		now.stones[8] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 97: // STATE 215
		;
		now.stones[9] = trpt->bup.ovals[1];
		now.stones[8] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 99: // STATE 221
		;
		now.stones[10] = trpt->bup.ovals[1];
		now.stones[8] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 102: // STATE 230
		;
		now.stones[8] = trpt->bup.ovals[1];
		now.stones[9] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 104: // STATE 236
		;
		now.stones[7] = trpt->bup.ovals[1];
		now.stones[9] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 106: // STATE 242
		;
		now.stones[10] = trpt->bup.ovals[1];
		now.stones[9] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 108: // STATE 248
		;
		now.stones[11] = trpt->bup.ovals[1];
		now.stones[9] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 111: // STATE 257
		;
		now.stones[9] = trpt->bup.ovals[1];
		now.stones[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 113: // STATE 263
		;
		now.stones[8] = trpt->bup.ovals[1];
		now.stones[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 115: // STATE 269
		;
		now.stones[11] = trpt->bup.ovals[1];
		now.stones[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 117: // STATE 275
		;
		now.stones[12] = trpt->bup.ovals[1];
		now.stones[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 120: // STATE 284
		;
		now.stones[10] = trpt->bup.ovals[1];
		now.stones[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 122: // STATE 290
		;
		now.stones[9] = trpt->bup.ovals[1];
		now.stones[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 124: // STATE 296
		;
		now.stones[12] = trpt->bup.ovals[1];
		now.stones[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 126: // STATE 302
		;
		now.stones[13] = trpt->bup.ovals[1];
		now.stones[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 129: // STATE 311
		;
		now.stones[11] = trpt->bup.ovals[1];
		now.stones[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 131: // STATE 317
		;
		now.stones[10] = trpt->bup.ovals[1];
		now.stones[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 133: // STATE 323
		;
		now.stones[13] = trpt->bup.ovals[1];
		now.stones[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 135: // STATE 329
		;
		now.stones[14] = trpt->bup.ovals[1];
		now.stones[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 138: // STATE 338
		;
		now.stones[12] = trpt->bup.ovals[1];
		now.stones[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 140: // STATE 344
		;
		now.stones[11] = trpt->bup.ovals[1];
		now.stones[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 142: // STATE 350
		;
		now.stones[14] = trpt->bup.ovals[1];
		now.stones[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 144: // STATE 356
		;
		now.stones[15] = trpt->bup.ovals[1];
		now.stones[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 147: // STATE 365
		;
		now.stones[13] = trpt->bup.ovals[1];
		now.stones[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 149: // STATE 371
		;
		now.stones[12] = trpt->bup.ovals[1];
		now.stones[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 151: // STATE 377
		;
		now.stones[15] = trpt->bup.ovals[1];
		now.stones[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 153: // STATE 383
		;
		now.stones[16] = trpt->bup.ovals[1];
		now.stones[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 156: // STATE 392
		;
		now.stones[14] = trpt->bup.ovals[1];
		now.stones[15] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 158: // STATE 398
		;
		now.stones[13] = trpt->bup.ovals[1];
		now.stones[15] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 160: // STATE 404
		;
		now.stones[16] = trpt->bup.ovals[1];
		now.stones[15] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 162: // STATE 410
		;
		now.stones[17] = trpt->bup.ovals[1];
		now.stones[15] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 165: // STATE 419
		;
		now.stones[15] = trpt->bup.ovals[1];
		now.stones[16] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 167: // STATE 425
		;
		now.stones[14] = trpt->bup.ovals[1];
		now.stones[16] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 169: // STATE 431
		;
		now.stones[17] = trpt->bup.ovals[1];
		now.stones[16] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 171: // STATE 437
		;
		now.stones[18] = trpt->bup.ovals[1];
		now.stones[16] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 174: // STATE 446
		;
		now.stones[16] = trpt->bup.ovals[1];
		now.stones[17] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 176: // STATE 452
		;
		now.stones[15] = trpt->bup.ovals[1];
		now.stones[17] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 178: // STATE 458
		;
		now.stones[18] = trpt->bup.ovals[1];
		now.stones[17] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 181: // STATE 467
		;
		now.stones[17] = trpt->bup.ovals[1];
		now.stones[18] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 183: // STATE 473
		;
		now.stones[16] = trpt->bup.ovals[1];
		now.stones[18] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 184: // STATE 481
		;
		p_restor(II);
		;
		;
		goto R999;
	}

