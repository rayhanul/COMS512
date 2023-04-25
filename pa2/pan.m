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
	case 5: // STATE 1 - PA2-P1-rayhanul.pml:91 - [network?msg,_,data.key,data.info1,data.info2] (0:0:6 - 1)
		reached[2][1] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->msg;
		(trpt+1)->bup.ovals[1] = qrecv(now.network, XX-1, 1, 0);
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->data.key;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->data.info1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->data.info2;
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
		((P2 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
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
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info2); strcat(simvals, simtmp);		}
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
		/* dead 2: msg */  (trpt+1)->bup.ovals[5] = ((P2 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->msg = 0;
		_m = 4; goto P999; /* 0 */
	case 6: // STATE 2 - PA2-P1-rayhanul.pml:93 - [intercepted.key = data.key] (0:17:3 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->intercepted.key;
		((P2 *)_this)->intercepted.key = ((P2 *)_this)->data.key;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.key", ((P2 *)_this)->intercepted.key);
#endif
		;
		/* merge: intercepted.info1 = data.info1(17, 3, 17) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->intercepted.info1;
		((P2 *)_this)->intercepted.info1 = ((P2 *)_this)->data.info1;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info1", ((P2 *)_this)->intercepted.info1);
#endif
		;
		/* merge: intercepted.info2 = data.info2(17, 4, 17) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->intercepted.info2;
		((P2 *)_this)->intercepted.info2 = ((P2 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info2", ((P2 *)_this)->intercepted.info2);
#endif
		;
		/* merge: .(goto)(0, 7, 17) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 7: // STATE 8 - PA2-P1-rayhanul.pml:97 - [((data.key==keyI))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((((P2 *)_this)->data.key==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 9 - PA2-P1-rayhanul.pml:99 - [(((data.info1==nonceA)||(data.info2==nonceA)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!(((((P2 *)_this)->data.info1==3)||(((P2 *)_this)->data.info2==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 10 - PA2-P1-rayhanul.pml:99 - [knows_nonceA = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		(trpt+1)->bup.oval = ((int)now.knows_nonceA);
		now.knows_nonceA = 1;
#ifdef VAR_RANGES
		logval("knows_nonceA", ((int)now.knows_nonceA));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 19 - PA2-P1-rayhanul.pml:107 - [msg = msg1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 12;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 20 - PA2-P1-rayhanul.pml:108 - [msg = msg2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 11;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 21 - PA2-P1-rayhanul.pml:109 - [msg = msg3] (0:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 10;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 24 - PA2-P1-rayhanul.pml:112 - [recpt = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 6;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 25 - PA2-P1-rayhanul.pml:113 - [recpt = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 5;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 28 - PA2-P1-rayhanul.pml:116 - [data.key = intercepted.key] (0:43:3 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = ((P2 *)_this)->intercepted.key;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = intercepted.info1(43, 29, 43) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = ((P2 *)_this)->intercepted.info1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = intercepted.info2(43, 30, 43) */
		reached[2][30] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = ((P2 *)_this)->intercepted.info2;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		/* merge: .(goto)(0, 42, 43) */
		reached[2][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 31 - PA2-P1-rayhanul.pml:118 - [data.info1 = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 32 - PA2-P1-rayhanul.pml:119 - [data.info1 = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 33 - PA2-P1-rayhanul.pml:120 - [data.info1 = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 34 - PA2-P1-rayhanul.pml:121 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 35 - PA2-P1-rayhanul.pml:121 - [data.info1 = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 36 - PA2-P1-rayhanul.pml:122 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 37 - PA2-P1-rayhanul.pml:122 - [data.info1 = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 38 - PA2-P1-rayhanul.pml:123 - [data.info1 = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 43 - PA2-P1-rayhanul.pml:127 - [network!msg,recpt,data.key,data.info1,data.info2] (0:0:0 - 9)
		IfNotBlocked
		reached[2][43] = 1;
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
		sprintf(simtmp, "%d", ((P2 *)_this)->data.info2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, ((P2 *)_this)->msg, ((P2 *)_this)->recpt, ((P2 *)_this)->data.key, ((P2 *)_this)->data.info1, ((P2 *)_this)->data.info2, 5);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 47 - PA2-P1-rayhanul.pml:129 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 26: // STATE 1 - PA2-P1-rayhanul.pml:62 - [network?msg1,agentB,data.key,data.info1,data.info2] (0:0:3 - 1)
		reached[1][1] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (12 != qrecv(now.network, 0, 0, 0)) continue;
		if (5 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data.key;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data.info1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data.info2;
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
		((P1 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Bob:data.info2", ((P1 *)_this)->data.info2);
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
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info2); strcat(simvals, simtmp);		}
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
	case 27: // STATE 2 - PA2-P1-rayhanul.pml:68 - [partnerB = data.info1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.partnerB;
		now.partnerB = ((P1 *)_this)->data.info1;
#ifdef VAR_RANGES
		logval("partnerB", now.partnerB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 3 - PA2-P1-rayhanul.pml:70 - [((data.key==keyB))] (9:0:4 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->data.key==8)))
			continue;
		/* merge: pnonce = data.info2(9, 4, 9) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->pnonce;
		((P1 *)_this)->pnonce = ((P1 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Bob:pnonce", ((P1 *)_this)->pnonce);
#endif
		;
		/* merge: (9, 5, 9) */
		reached[1][5] = 1;
		;
		/* merge: data2.key = pkey(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 29: // STATE 9 - PA2-P1-rayhanul.pml:74 - [network!msg2,partnerB,data2.key,data2.info1,data2.info2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
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
		sprintf(simtmp, "%d", ((P1 *)_this)->data2.info2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 11, now.partnerB, ((P1 *)_this)->data2.key, ((P1 *)_this)->data2.info1, ((P1 *)_this)->data2.info2, 5);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 10 - PA2-P1-rayhanul.pml:77 - [network?msg3,agentB,data.key,data.info1,data.info2] (0:0:3 - 1)
		reached[1][10] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (10 != qrecv(now.network, 0, 0, 0)) continue;
		if (5 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data.key;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data.info1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data.info2;
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
		((P1 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Bob:data.info2", ((P1 *)_this)->data.info2);
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
		sprintf(simtmp, "%d", ((P1 *)_this)->data.info2); strcat(simvals, simtmp);		}
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
	case 31: // STATE 11 - PA2-P1-rayhanul.pml:78 - [(((data.key==keyB)&&(data.info1==nonceB)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((((P1 *)_this)->data.key==8)&&(((P1 *)_this)->data.info1==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 12 - PA2-P1-rayhanul.pml:81 - [statusB = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.statusB;
		now.statusB = 14;
#ifdef VAR_RANGES
		logval("statusB", now.statusB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 13 - PA2-P1-rayhanul.pml:82 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 34: // STATE 1 - PA2-P1-rayhanul.pml:38 - [partnerA = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 5;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 2 - PA2-P1-rayhanul.pml:38 - [pkey = keyB] (0:10:4 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pkey;
		((P0 *)_this)->pkey = 8;
#ifdef VAR_RANGES
		logval("Alice:pkey", ((P0 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(10, 6, 10) */
		reached[0][6] = 1;
		;
		/* merge: data.key = pkey(10, 7, 10) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(10, 8, 10) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(10, 9, 10) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 36: // STATE 3 - PA2-P1-rayhanul.pml:39 - [partnerA = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 4;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 4 - PA2-P1-rayhanul.pml:39 - [pkey = keyI] (0:10:4 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pkey;
		((P0 *)_this)->pkey = 7;
#ifdef VAR_RANGES
		logval("Alice:pkey", ((P0 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(10, 6, 10) */
		reached[0][6] = 1;
		;
		/* merge: data.key = pkey(10, 7, 10) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(10, 8, 10) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(10, 9, 10) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 38: // STATE 7 - PA2-P1-rayhanul.pml:42 - [data.key = pkey] (0:10:3 - 3)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->data.key;
		((P0 *)_this)->data.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = agentA(10, 8, 10) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.info1;
		((P0 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = nonceA(10, 9, 10) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info2;
		((P0 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 10 - PA2-P1-rayhanul.pml:44 - [network!msg1,partnerA,data.key,data.info1,data.info2] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
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
		sprintf(simtmp, "%d", ((P0 *)_this)->data.info2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 12, now.partnerA, ((P0 *)_this)->data.key, ((P0 *)_this)->data.info1, ((P0 *)_this)->data.info2, 5);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 11 - PA2-P1-rayhanul.pml:46 - [network?msg2,agentA,data.key,data.info1,data.info2] (0:0:3 - 1)
		reached[0][11] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (11 != qrecv(now.network, 0, 0, 0)) continue;
		if (6 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->data.key;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data.info1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data.info2;
		;
		((P0 *)_this)->data.key = qrecv(now.network, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Alice:data.key", ((P0 *)_this)->data.key);
#endif
		;
		((P0 *)_this)->data.info1 = qrecv(now.network, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Alice:data.info1", ((P0 *)_this)->data.info1);
#endif
		;
		((P0 *)_this)->data.info2 = qrecv(now.network, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Alice:data.info2", ((P0 *)_this)->data.info2);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.network);
		sprintf(simtmp, "%d", 11); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data.info2); strcat(simvals, simtmp);		}
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
	case 41: // STATE 12 - PA2-P1-rayhanul.pml:48 - [(((data.key==keyA)&&(data.info1==nonceA)))] (18:0:4 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(((((P0 *)_this)->data.key==9)&&(((P0 *)_this)->data.info1==3))))
			continue;
		/* merge: pnonce = data.info2(18, 13, 18) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pnonce;
		((P0 *)_this)->pnonce = ((P0 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Alice:pnonce", ((P0 *)_this)->pnonce);
#endif
		;
		/* merge: (18, 14, 18) */
		reached[0][14] = 1;
		;
		/* merge: data2.key = pkey(18, 15, 18) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data2.key;
		((P0 *)_this)->data2.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data2.key", ((P0 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(18, 16, 18) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data2.info1;
		((P0 *)_this)->data2.info1 = ((P0 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Alice:data2.info1", ((P0 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = 0(18, 17, 18) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data2.info2;
		((P0 *)_this)->data2.info2 = 0;
#ifdef VAR_RANGES
		logval("Alice:data2.info2", ((P0 *)_this)->data2.info2);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 42: // STATE 18 - PA2-P1-rayhanul.pml:52 - [network!msg3,partnerA,data2.key,data2.info1,data2.info2] (0:0:0 - 1)
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
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.key); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.info1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.info2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 10, now.partnerA, ((P0 *)_this)->data2.key, ((P0 *)_this)->data2.info1, ((P0 *)_this)->data2.info2, 5);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 19 - PA2-P1-rayhanul.pml:53 - [statusA = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.statusA;
		now.statusA = 14;
#ifdef VAR_RANGES
		logval("statusA", now.statusA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 20 - PA2-P1-rayhanul.pml:55 - [-end-] (0:0:0 - 1)
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

