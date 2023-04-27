#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM part2 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((((!(!(((statusA==ok)&&(statusB==ok))))&&!((partnerB==agentA)))&&(partnerA==agentB))||((!(!(((statusA==ok)&&(statusB==ok))))&&!((partnerA==agentB)))&&(partnerB==agentA))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(((( !( !(((now.statusA==14)&&(now.statusB==14))))&& !((now.partnerB==6)))&&(now.partnerA==5))||(( !( !(((now.statusA==14)&&(now.statusB==14))))&& !((now.partnerA==5)))&&(now.partnerB==6)))))
			continue;
		/* merge: assert(!((((!(!(((statusA==ok)&&(statusB==ok))))&&!((partnerB==agentA)))&&(partnerA==agentB))||((!(!(((statusA==ok)&&(statusB==ok))))&&!((partnerA==agentB)))&&(partnerB==agentA)))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !(((( !( !(((now.statusA==14)&&(now.statusB==14))))&& !((now.partnerB==6)))&&(now.partnerA==5))||(( !( !(((now.statusA==14)&&(now.statusB==14))))&& !((now.partnerA==5)))&&(now.partnerB==6)))), " !(((( !( !(((statusA==14)&&(statusB==14))))&& !((partnerB==6)))&&(partnerA==5))||(( !( !(((statusA==14)&&(statusB==14))))&& !((partnerA==5)))&&(partnerB==6))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Intruder */
	case 5: // STATE 1 - PA2-P1-rayhanul.pml:85 - [network?msg,_,data.key,data.info1,data.info2,data.who_sending] (0:0:7 - 1)
		reached[2][1] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->msg;
		(trpt+1)->bup.ovals[1] = qrecv(now.network, XX-1, 1, 0);
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->data.key;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->data.info1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->data.info2;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->data.who_sending;
		;
		((P2 *)_this)->msg = qrecv(now.network, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		qrecv(now.network, XX-1, 1, 0);
		((P2 *)_this)->data.key = qrecv(now.network, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		((P2 *)_this)->data.info1 = qrecv(now.network, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		((P2 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		((P2 *)_this)->data.who_sending = qrecv(now.network, XX-1, 5, 1);
#ifdef VAR_RANGES
		logval("Intruder:data.who_sending", ((P2 *)_this)->data.who_sending);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.network);
		sprintf(simtmp, "%d", ((P2 *)_this)->msg); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.who_sending); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.network))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg */  (trpt+1)->bup.ovals[6] = ((P2 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->msg = 0;
		_m = 4; goto P999; /* 0 */
	case 6: // STATE 2 - PA2-P1-rayhanul.pml:87 - [intercepted.key = data.key] (0:25:4 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->intercepted.key;
		((P2 *)_this)->intercepted.key = ((P2 *)_this)->data.key;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.key", ((P2 *)_this)->intercepted.key);
#endif
		;
		/* merge: intercepted.info1 = data.info1(25, 3, 25) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->intercepted.info1;
		((P2 *)_this)->intercepted.info1 = ((P2 *)_this)->data.info1;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info1", ((P2 *)_this)->intercepted.info1);
#endif
		;
		/* merge: intercepted.info2 = data.info2(25, 4, 25) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->intercepted.info2;
		((P2 *)_this)->intercepted.info2 = ((P2 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info2", ((P2 *)_this)->intercepted.info2);
#endif
		;
		/* merge: intercepted.who_sending = data.who_sending(25, 5, 25) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->intercepted.who_sending;
		((P2 *)_this)->intercepted.who_sending = ((P2 *)_this)->data.who_sending;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.who_sending", ((P2 *)_this)->intercepted.who_sending);
#endif
		;
		/* merge: .(goto)(0, 8, 25) */
		reached[2][8] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 7: // STATE 9 - PA2-P1-rayhanul.pml:91 - [((data.key==keyI))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((P2 *)_this)->data.key==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 10 - PA2-P1-rayhanul.pml:93 - [(((data.info1==nonceA)||(data.info2==nonceA)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!(((((P2 *)_this)->data.info1==3)||(((P2 *)_this)->data.info2==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 11 - PA2-P1-rayhanul.pml:93 - [knows_nonceA = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		(trpt+1)->bup.oval = ((int)now.knows_nonceA);
		now.knows_nonceA = 1;
#ifdef VAR_RANGES
		logval("knows_nonceA", ((int)now.knows_nonceA));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - PA2-P1-rayhanul.pml:97 - [((data.key==keyI))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!((((P2 *)_this)->data.key==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 17 - PA2-P1-rayhanul.pml:99 - [(((data.info1==nonceB)||(data.info2==nonceB)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!(((((P2 *)_this)->data.info1==2)||(((P2 *)_this)->data.info2==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 18 - PA2-P1-rayhanul.pml:99 - [knows_nonceB = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		(trpt+1)->bup.oval = ((int)now.knows_nonceB);
		now.knows_nonceB = 1;
#ifdef VAR_RANGES
		logval("knows_nonceB", ((int)now.knows_nonceB));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 27 - PA2-P1-rayhanul.pml:107 - [msg = msg1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 12;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 28 - PA2-P1-rayhanul.pml:108 - [msg = msg2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 11;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 29 - PA2-P1-rayhanul.pml:109 - [msg = msg3] (0:0:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 10;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 32 - PA2-P1-rayhanul.pml:112 - [recpt = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 6;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 33 - PA2-P1-rayhanul.pml:113 - [recpt = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 5;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 36 - PA2-P1-rayhanul.pml:116 - [data.key = intercepted.key] (0:77:4 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = ((P2 *)_this)->intercepted.key;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = intercepted.info1(77, 37, 77) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = ((P2 *)_this)->intercepted.info1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = intercepted.info2(77, 38, 77) */
		reached[2][38] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = ((P2 *)_this)->intercepted.info2;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		/* merge: data.who_sending = intercepted.who_sending(77, 39, 77) */
		reached[2][39] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->data.who_sending;
		((P2 *)_this)->data.who_sending = ((P2 *)_this)->intercepted.who_sending;
#ifdef VAR_RANGES
		logval("Intruder:data.who_sending", ((P2 *)_this)->data.who_sending);
#endif
		;
		/* merge: .(goto)(0, 76, 77) */
		reached[2][76] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 19: // STATE 40 - PA2-P1-rayhanul.pml:118 - [data.info1 = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 41 - PA2-P1-rayhanul.pml:119 - [data.info1 = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 42 - PA2-P1-rayhanul.pml:120 - [data.info1 = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 43 - PA2-P1-rayhanul.pml:121 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 44 - PA2-P1-rayhanul.pml:121 - [data.info1 = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 45 - PA2-P1-rayhanul.pml:122 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 46 - PA2-P1-rayhanul.pml:122 - [data.info1 = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 47 - PA2-P1-rayhanul.pml:123 - [data.info1 = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 50 - PA2-P1-rayhanul.pml:127 - [data.info2 = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 51 - PA2-P1-rayhanul.pml:128 - [data.info2 = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 52 - PA2-P1-rayhanul.pml:129 - [data.info2 = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 53 - PA2-P1-rayhanul.pml:130 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 54 - PA2-P1-rayhanul.pml:130 - [data.info2 = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 55 - PA2-P1-rayhanul.pml:131 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 56 - PA2-P1-rayhanul.pml:131 - [data.info2 = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 57 - PA2-P1-rayhanul.pml:132 - [data.info2 = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 60 - PA2-P1-rayhanul.pml:136 - [data.key = keyA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 9;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 61 - PA2-P1-rayhanul.pml:137 - [data.key = keyB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 8;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 62 - PA2-P1-rayhanul.pml:138 - [data.key = keyI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 7;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 63 - PA2-P1-rayhanul.pml:139 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 64 - PA2-P1-rayhanul.pml:139 - [data.key = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 65 - PA2-P1-rayhanul.pml:140 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 66 - PA2-P1-rayhanul.pml:140 - [data.key = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 67 - PA2-P1-rayhanul.pml:141 - [data.key = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 70 - PA2-P1-rayhanul.pml:144 - [data.who_sending = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][70] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.who_sending;
		((P2 *)_this)->data.who_sending = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.who_sending", ((P2 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 71 - PA2-P1-rayhanul.pml:145 - [data.who_sending = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][71] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.who_sending;
		((P2 *)_this)->data.who_sending = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.who_sending", ((P2 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 72 - PA2-P1-rayhanul.pml:146 - [data.who_sending = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][72] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.who_sending;
		((P2 *)_this)->data.who_sending = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.who_sending", ((P2 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 77 - PA2-P1-rayhanul.pml:154 - [network!msg,recpt,data.key,data.info1,data.info2,data.who_sending] (0:0:0 - 27)
		IfNotBlocked
		reached[2][77] = 1;
		if (q_len(now.network))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.network);
		sprintf(simtmp, "%d", ((P2 *)_this)->msg); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->recpt); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->data.who_sending); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, ((P2 *)_this)->msg, ((P2 *)_this)->recpt, ((P2 *)_this)->data.key, ((P2 *)_this)->data.info1, ((P2 *)_this)->data.info2, ((P2 *)_this)->data.who_sending, 6);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 81 - PA2-P1-rayhanul.pml:156 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][81] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 48: // STATE 1 - PA2-P1-rayhanul.pml:60 - [network?msg1,agentB,data.key,data.info1,data.info2,data.who_sending] (0:0:4 - 1)
		reached[1][1] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (12 != qrecv(now.network, 0, 0, 0)) continue;
		if (5 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data.key;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data.info1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data.info2;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data.who_sending;
		;
		((P1 *)_this)->data.key = qrecv(now.network, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:data.key", ((P1 *)_this)->data.key);
#endif
		;
		((P1 *)_this)->data.info1 = qrecv(now.network, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:data.info1", ((P1 *)_this)->data.info1);
#endif
		;
		((P1 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:data.info2", ((P1 *)_this)->data.info2);
#endif
		;
		((P1 *)_this)->data.who_sending = qrecv(now.network, XX-1, 5, 1);
#ifdef VAR_RANGES
		logval("Bob:data.who_sending", ((P1 *)_this)->data.who_sending);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.network);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.who_sending); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.network))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 2 - PA2-P1-rayhanul.pml:62 - [(((data.key==keyB)&&(data.info2==nonceA)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((((P1 *)_this)->data.key==8)&&(((P1 *)_this)->data.info2==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 3 - PA2-P1-rayhanul.pml:63 - [partnerB = data.info1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.partnerB;
		now.partnerB = ((P1 *)_this)->data.info1;
#ifdef VAR_RANGES
		logval("partnerB", now.partnerB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 4 - PA2-P1-rayhanul.pml:64 - [pnonce = data.info2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->pnonce;
		((P1 *)_this)->pnonce = ((P1 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Bob:pnonce", ((P1 *)_this)->pnonce);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 5 - PA2-P1-rayhanul.pml:66 - [partnerA = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 5;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 6 - PA2-P1-rayhanul.pml:66 - [pkey = keyB] (0:16:5 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->pkey;
		((P1 *)_this)->pkey = 8;
#ifdef VAR_RANGES
		logval("Bob:pkey", ((P1 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(16, 10, 16) */
		reached[1][10] = 1;
		;
		/* merge: (16, 11, 16) */
		reached[1][11] = 1;
		;
		/* merge: data2.key = pkey(16, 12, 16) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(16, 14, 16) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		/* merge: data2.who_sending = agentB(16, 15, 16) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->data2.who_sending;
		((P1 *)_this)->data2.who_sending = 5;
#ifdef VAR_RANGES
		logval("Bob:data2.who_sending", ((P1 *)_this)->data2.who_sending);
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 54: // STATE 7 - PA2-P1-rayhanul.pml:67 - [partnerA = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 4;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 8 - PA2-P1-rayhanul.pml:67 - [pkey = keyI] (0:16:5 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->pkey;
		((P1 *)_this)->pkey = 7;
#ifdef VAR_RANGES
		logval("Bob:pkey", ((P1 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(16, 10, 16) */
		reached[1][10] = 1;
		;
		/* merge: (16, 11, 16) */
		reached[1][11] = 1;
		;
		/* merge: data2.key = pkey(16, 12, 16) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(16, 14, 16) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		/* merge: data2.who_sending = agentB(16, 15, 16) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->data2.who_sending;
		((P1 *)_this)->data2.who_sending = 5;
#ifdef VAR_RANGES
		logval("Bob:data2.who_sending", ((P1 *)_this)->data2.who_sending);
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 56: // STATE 11 - PA2-P1-rayhanul.pml:70 - [] (0:16:4 - 3)
		IfNotBlocked
		reached[1][11] = 1;
		;
		/* merge: data2.key = pkey(16, 12, 16) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(16, 14, 16) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		/* merge: data2.who_sending = agentB(16, 15, 16) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.who_sending;
		((P1 *)_this)->data2.who_sending = 5;
#ifdef VAR_RANGES
		logval("Bob:data2.who_sending", ((P1 *)_this)->data2.who_sending);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 57: // STATE 16 - PA2-P1-rayhanul.pml:71 - [network!msg2,partnerB,data2.key,data2.info1,data2.info2,data2.who_sending] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (q_len(now.network))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.network);
		sprintf(simtmp, "%d", 11); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", now.partnerB); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data2.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data2.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data2.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data2.who_sending); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 11, now.partnerB, ((P1 *)_this)->data2.key, ((P1 *)_this)->data2.info1, ((P1 *)_this)->data2.info2, ((P1 *)_this)->data2.who_sending, 6);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 58: // STATE 17 - PA2-P1-rayhanul.pml:73 - [network?msg3,agentB,data.key,data.info1,data.info2,data.who_sending] (0:0:4 - 1)
		reached[1][17] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (10 != qrecv(now.network, 0, 0, 0)) continue;
		if (5 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data.key;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data.info1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data.info2;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data.who_sending;
		;
		((P1 *)_this)->data.key = qrecv(now.network, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:data.key", ((P1 *)_this)->data.key);
#endif
		;
		((P1 *)_this)->data.info1 = qrecv(now.network, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:data.info1", ((P1 *)_this)->data.info1);
#endif
		;
		((P1 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:data.info2", ((P1 *)_this)->data.info2);
#endif
		;
		((P1 *)_this)->data.who_sending = qrecv(now.network, XX-1, 5, 1);
#ifdef VAR_RANGES
		logval("Bob:data.who_sending", ((P1 *)_this)->data.who_sending);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.network);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->data.who_sending); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.network))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 59: // STATE 18 - PA2-P1-rayhanul.pml:74 - [(((data.key==keyB)&&(data.info1==nonceB)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(((((P1 *)_this)->data.key==8)&&(((P1 *)_this)->data.info1==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 19 - PA2-P1-rayhanul.pml:75 - [statusB = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = now.statusB;
		now.statusB = 14;
#ifdef VAR_RANGES
		logval("statusB", now.statusB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 20 - PA2-P1-rayhanul.pml:76 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 62: // STATE 1 - PA2-P1-rayhanul.pml:38 - [partnerA = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 5;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 2 - PA2-P1-rayhanul.pml:38 - [pkey = keyB] (0:11:5 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pkey;
		((P0 *)_this)->pkey = 8;
#ifdef VAR_RANGES
		logval("Alice:pkey", ((P0 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(11, 6, 11) */
		reached[0][6] = 1;
		;
		/* merge: data.key = pkey(11, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(11, 9, 11) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		/* merge: data.who_sending = agentA(11, 10, 11) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->data.who_sending;
		((P0 *)_this)->data.who_sending = 6;
#ifdef VAR_RANGES
		logval("Alice:data.who_sending", ((P0 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 64: // STATE 3 - PA2-P1-rayhanul.pml:39 - [partnerA = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 4;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 4 - PA2-P1-rayhanul.pml:39 - [pkey = keyI] (0:11:5 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pkey;
		((P0 *)_this)->pkey = 7;
#ifdef VAR_RANGES
		logval("Alice:pkey", ((P0 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(11, 6, 11) */
		reached[0][6] = 1;
		;
		/* merge: data.key = pkey(11, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(11, 9, 11) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		/* merge: data.who_sending = agentA(11, 10, 11) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->data.who_sending;
		((P0 *)_this)->data.who_sending = 6;
#ifdef VAR_RANGES
		logval("Alice:data.who_sending", ((P0 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 66: // STATE 7 - PA2-P1-rayhanul.pml:42 - [data.key = pkey] (0:11:4 - 3)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(11, 9, 11) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		/* merge: data.who_sending = agentA(11, 10, 11) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data.who_sending;
		((P0 *)_this)->data.who_sending = 6;
#ifdef VAR_RANGES
		logval("Alice:data.who_sending", ((P0 *)_this)->data.who_sending);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 67: // STATE 11 - PA2-P1-rayhanul.pml:44 - [network!msg1,partnerA,data.key,data.info1,data.info2,data.who_sending] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_len(now.network))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.network);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", now.partnerA); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.who_sending); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 12, now.partnerA, ((P0 *)_this)->data.key, ((P0 *)_this)->data.info1, ((P0 *)_this)->data.info2, ((P0 *)_this)->data.who_sending, 6);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 12 - PA2-P1-rayhanul.pml:46 - [network?msg2,agentA,data2.key,data2.info1,data2.info2,data2.who_sending] (0:0:4 - 1)
		reached[0][12] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (11 != qrecv(now.network, 0, 0, 0)) continue;
		if (6 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->data2.key;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data2.info1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data2.info2;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data2.who_sending;
		;
		((P0 *)_this)->data2.key = qrecv(now.network, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Alice:data2.key", ((P0 *)_this)->data2.key);
#endif
		;
		((P0 *)_this)->data2.info1 = qrecv(now.network, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Alice:data2.info1", ((P0 *)_this)->data2.info1);
#endif
		;
		((P0 *)_this)->data2.info2 = qrecv(now.network, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Alice:data2.info2", ((P0 *)_this)->data2.info2);
#endif
		;
		((P0 *)_this)->data2.who_sending = qrecv(now.network, XX-1, 5, 1);
#ifdef VAR_RANGES
		logval("Alice:data2.who_sending", ((P0 *)_this)->data2.who_sending);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.network);
		sprintf(simtmp, "%d", 11); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.who_sending); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.network))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 69: // STATE 13 - PA2-P1-rayhanul.pml:47 - [(((data2.key==keyA)&&(data2.info1==nonceA)))] (18:0:4 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((((P0 *)_this)->data2.key==9)&&(((P0 *)_this)->data2.info1==3))))
			continue;
		/* merge: pnonce = data2.info2(18, 14, 18) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pnonce;
		((P0 *)_this)->pnonce = ((P0 *)_this)->data2.info2;
#ifdef VAR_RANGES
		logval("Alice:pnonce", ((P0 *)_this)->pnonce);
#endif
		;
		/* merge: data3.key = pkey(18, 15, 18) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data3.key;
		((P0 *)_this)->data3.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data3.key", ((P0 *)_this)->data3.key);
#endif
		;
		/* merge: data3.info1 = pnonce(18, 16, 18) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data3.info1;
		((P0 *)_this)->data3.info1 = ((P0 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Alice:data3.info1", ((P0 *)_this)->data3.info1);
#endif
		;
		/* merge: data3.info2 = 0(18, 17, 18) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data3.info2;
		((P0 *)_this)->data3.info2 = 0;
#ifdef VAR_RANGES
		logval("Alice:data3.info2", ((P0 *)_this)->data3.info2);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 70: // STATE 18 - PA2-P1-rayhanul.pml:51 - [network!msg3,partnerA,data3.key,data3.info1,data3.info2,data3.who_sending] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (q_len(now.network))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.network);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", now.partnerA); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data3.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data3.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data3.info2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data3.who_sending); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 10, now.partnerA, ((P0 *)_this)->data3.key, ((P0 *)_this)->data3.info1, ((P0 *)_this)->data3.info2, ((P0 *)_this)->data3.who_sending, 6);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 71: // STATE 19 - PA2-P1-rayhanul.pml:52 - [statusA = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.statusA;
		now.statusA = 14;
#ifdef VAR_RANGES
		logval("statusA", now.statusA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 20 - PA2-P1-rayhanul.pml:53 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

