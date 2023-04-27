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
	case 5: // STATE 1 - PA2-P1-rayhanul.pml:85 - [network?msg,_,data.key,data.info1,data.info2] (0:0:6 - 1)
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
	case 6: // STATE 2 - PA2-P1-rayhanul.pml:87 - [intercepted.key = data.key] (0:24:3 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->intercepted.key;
		((P2 *)_this)->intercepted.key = ((P2 *)_this)->data.key;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.key", ((P2 *)_this)->intercepted.key);
#endif
		;
		/* merge: intercepted.info1 = data.info1(24, 3, 24) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->intercepted.info1;
		((P2 *)_this)->intercepted.info1 = ((P2 *)_this)->data.info1;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info1", ((P2 *)_this)->intercepted.info1);
#endif
		;
		/* merge: intercepted.info2 = data.info2(24, 4, 24) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->intercepted.info2;
		((P2 *)_this)->intercepted.info2 = ((P2 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Intruder:intercepted.info2", ((P2 *)_this)->intercepted.info2);
#endif
		;
		/* merge: .(goto)(0, 7, 24) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 7: // STATE 8 - PA2-P1-rayhanul.pml:91 - [((data.key==keyI))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((((P2 *)_this)->data.key==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 9 - PA2-P1-rayhanul.pml:93 - [(((data.info1==nonceA)||(data.info2==nonceA)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!(((((P2 *)_this)->data.info1==3)||(((P2 *)_this)->data.info2==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 10 - PA2-P1-rayhanul.pml:93 - [knows_nonceA = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		(trpt+1)->bup.oval = ((int)now.knows_nonceA);
		now.knows_nonceA = 1;
#ifdef VAR_RANGES
		logval("knows_nonceA", ((int)now.knows_nonceA));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 15 - PA2-P1-rayhanul.pml:97 - [((data.key==keyI))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!((((P2 *)_this)->data.key==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 16 - PA2-P1-rayhanul.pml:99 - [(((data.info1==nonceB)||(data.info2==nonceB)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!(((((P2 *)_this)->data.info1==2)||(((P2 *)_this)->data.info2==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 17 - PA2-P1-rayhanul.pml:99 - [knows_nonceB = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		(trpt+1)->bup.oval = ((int)now.knows_nonceB);
		now.knows_nonceB = 1;
#ifdef VAR_RANGES
		logval("knows_nonceB", ((int)now.knows_nonceB));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 26 - PA2-P1-rayhanul.pml:107 - [msg = msg1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 12;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 27 - PA2-P1-rayhanul.pml:108 - [msg = msg2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 11;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 28 - PA2-P1-rayhanul.pml:109 - [msg = msg3] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->msg;
		((P2 *)_this)->msg = 10;
#ifdef VAR_RANGES
		logval("Intruder:msg", ((P2 *)_this)->msg);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 31 - PA2-P1-rayhanul.pml:112 - [recpt = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 6;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 32 - PA2-P1-rayhanul.pml:113 - [recpt = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->recpt;
		((P2 *)_this)->recpt = 5;
#ifdef VAR_RANGES
		logval("Intruder:recpt", ((P2 *)_this)->recpt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 35 - PA2-P1-rayhanul.pml:116 - [data.key = intercepted.key] (0:70:3 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = ((P2 *)_this)->intercepted.key;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		/* merge: data.info1 = intercepted.info1(70, 36, 70) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = ((P2 *)_this)->intercepted.info1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		/* merge: data.info2 = intercepted.info2(70, 37, 70) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = ((P2 *)_this)->intercepted.info2;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		/* merge: .(goto)(0, 69, 70) */
		reached[2][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 38 - PA2-P1-rayhanul.pml:118 - [data.info1 = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 39 - PA2-P1-rayhanul.pml:119 - [data.info1 = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 40 - PA2-P1-rayhanul.pml:120 - [data.info1 = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 41 - PA2-P1-rayhanul.pml:121 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 42 - PA2-P1-rayhanul.pml:121 - [data.info1 = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 43 - PA2-P1-rayhanul.pml:122 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 44 - PA2-P1-rayhanul.pml:122 - [data.info1 = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 45 - PA2-P1-rayhanul.pml:123 - [data.info1 = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info1;
		((P2 *)_this)->data.info1 = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.info1", ((P2 *)_this)->data.info1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 48 - PA2-P1-rayhanul.pml:127 - [data.info2 = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 6;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 49 - PA2-P1-rayhanul.pml:128 - [data.info2 = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 5;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 50 - PA2-P1-rayhanul.pml:129 - [data.info2 = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 4;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 51 - PA2-P1-rayhanul.pml:130 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 52 - PA2-P1-rayhanul.pml:130 - [data.info2 = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 53 - PA2-P1-rayhanul.pml:131 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 54 - PA2-P1-rayhanul.pml:131 - [data.info2 = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 55 - PA2-P1-rayhanul.pml:132 - [data.info2 = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.info2;
		((P2 *)_this)->data.info2 = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.info2", ((P2 *)_this)->data.info2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 58 - PA2-P1-rayhanul.pml:136 - [data.key = keyA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 9;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 59 - PA2-P1-rayhanul.pml:137 - [data.key = keyB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][59] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 8;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 60 - PA2-P1-rayhanul.pml:138 - [data.key = keyI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 7;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 61 - PA2-P1-rayhanul.pml:139 - [(knows_nonceA)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		if (!(((int)now.knows_nonceA)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 62 - PA2-P1-rayhanul.pml:139 - [data.key = nonceA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 3;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 63 - PA2-P1-rayhanul.pml:140 - [(knows_nonceB)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!(((int)now.knows_nonceB)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 64 - PA2-P1-rayhanul.pml:140 - [data.key = nonceB] (0:0:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 2;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 65 - PA2-P1-rayhanul.pml:141 - [data.key = nonceI] (0:0:1 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->data.key;
		((P2 *)_this)->data.key = 1;
#ifdef VAR_RANGES
		logval("Intruder:data.key", ((P2 *)_this)->data.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 70 - PA2-P1-rayhanul.pml:147 - [network!msg,recpt,data.key,data.info1,data.info2] (0:0:0 - 23)
		IfNotBlocked
		reached[2][70] = 1;
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
	case 44: // STATE 74 - PA2-P1-rayhanul.pml:149 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 45: // STATE 1 - PA2-P1-rayhanul.pml:59 - [network?msg1,agentB,data.key,data.info1,data.info2] (0:0:3 - 1)
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
	case 46: // STATE 2 - PA2-P1-rayhanul.pml:60 - [((data.key==keyB))] (8:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->data.key==8)))
			continue;
		/* merge: pnonce = data.info2(0, 3, 8) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->pnonce;
		((P1 *)_this)->pnonce = ((P1 *)_this)->data.info2;
#ifdef VAR_RANGES
		logval("Bob:pnonce", ((P1 *)_this)->pnonce);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 47: // STATE 4 - PA2-P1-rayhanul.pml:65 - [partnerB = agentA] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.partnerB;
		now.partnerB = 6;
#ifdef VAR_RANGES
		logval("partnerB", now.partnerB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 5 - PA2-P1-rayhanul.pml:65 - [pkey = keyB] (0:14:4 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->pkey;
		((P1 *)_this)->pkey = 8;
#ifdef VAR_RANGES
		logval("Bob:pkey", ((P1 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(14, 9, 14) */
		reached[1][9] = 1;
		;
		/* merge: (14, 10, 14) */
		reached[1][10] = 1;
		;
		/* merge: data2.key = pkey(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 49: // STATE 6 - PA2-P1-rayhanul.pml:66 - [partnerB = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.partnerB;
		now.partnerB = 4;
#ifdef VAR_RANGES
		logval("partnerB", now.partnerB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 7 - PA2-P1-rayhanul.pml:66 - [pkey = keyI] (0:14:4 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->pkey;
		((P1 *)_this)->pkey = 7;
#ifdef VAR_RANGES
		logval("Bob:pkey", ((P1 *)_this)->pkey);
#endif
		;
		/* merge: .(goto)(14, 9, 14) */
		reached[1][9] = 1;
		;
		/* merge: (14, 10, 14) */
		reached[1][10] = 1;
		;
		/* merge: data2.key = pkey(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 51: // STATE 10 - PA2-P1-rayhanul.pml:69 - [] (0:14:3 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		;
		/* merge: data2.key = pkey(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->data2.key;
		((P1 *)_this)->data2.key = ((P1 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Bob:data2.key", ((P1 *)_this)->data2.key);
#endif
		;
		/* merge: data2.info1 = pnonce(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->data2.info1;
		((P1 *)_this)->data2.info1 = ((P1 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Bob:data2.info1", ((P1 *)_this)->data2.info1);
#endif
		;
		/* merge: data2.info2 = nonceB(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->data2.info2;
		((P1 *)_this)->data2.info2 = 2;
#ifdef VAR_RANGES
		logval("Bob:data2.info2", ((P1 *)_this)->data2.info2);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 52: // STATE 14 - PA2-P1-rayhanul.pml:70 - [network!msg2,partnerB,data2.key,data2.info1,data2.info2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
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
	case 53: // STATE 15 - PA2-P1-rayhanul.pml:72 - [network?msg3,agentB,data.key,data.info1,data.info2] (0:0:3 - 1)
		reached[1][15] = 1;
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
	case 54: // STATE 16 - PA2-P1-rayhanul.pml:73 - [(((data.key==keyB)&&(data.info1==nonceB)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((((P1 *)_this)->data.key==8)&&(((P1 *)_this)->data.info1==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 17 - PA2-P1-rayhanul.pml:75 - [statusB = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.statusB;
		now.statusB = 14;
#ifdef VAR_RANGES
		logval("statusB", now.statusB);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 18 - PA2-P1-rayhanul.pml:76 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 57: // STATE 1 - PA2-P1-rayhanul.pml:37 - [partnerA = agentB] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 5;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 2 - PA2-P1-rayhanul.pml:37 - [pkey = keyB] (0:10:4 - 1)
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
	case 59: // STATE 3 - PA2-P1-rayhanul.pml:38 - [partnerA = agentI] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.partnerA;
		now.partnerA = 4;
#ifdef VAR_RANGES
		logval("partnerA", now.partnerA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 4 - PA2-P1-rayhanul.pml:38 - [pkey = keyI] (0:10:4 - 1)
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
	case 61: // STATE 7 - PA2-P1-rayhanul.pml:41 - [data.key = pkey] (0:10:3 - 3)
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
	case 62: // STATE 10 - PA2-P1-rayhanul.pml:43 - [network!msg1,partnerA,data.key,data.info1,data.info2] (0:0:0 - 1)
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
	case 63: // STATE 11 - PA2-P1-rayhanul.pml:45 - [network?msg2,agentA,data2.key,data2.info1,data2.info2] (0:0:3 - 1)
		reached[0][11] = 1;
		if (boq != now.network) continue;
		if (q_len(now.network) == 0) continue;

		XX=1;
		if (11 != qrecv(now.network, 0, 0, 0)) continue;
		if (6 != qrecv(now.network, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->data2.key;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data2.info1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data2.info2;
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
		((P0 *)_this)->data2.info2 = qrecv(now.network, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Alice:data2.info2", ((P0 *)_this)->data2.info2);
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
		sprintf(simtmp, "%d", ((P0 *)_this)->data2.info2); strcat(simvals, simtmp);		}
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
	case 64: // STATE 12 - PA2-P1-rayhanul.pml:46 - [(((data2.key==keyA)&&(data2.info1==nonceA)))] (17:0:4 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(((((P0 *)_this)->data2.key==9)&&(((P0 *)_this)->data2.info1==3))))
			continue;
		/* merge: pnonce = data2.info2(17, 13, 17) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->pnonce;
		((P0 *)_this)->pnonce = ((P0 *)_this)->data2.info2;
#ifdef VAR_RANGES
		logval("Alice:pnonce", ((P0 *)_this)->pnonce);
#endif
		;
		/* merge: data3.key = pkey(17, 14, 17) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->data3.key;
		((P0 *)_this)->data3.key = ((P0 *)_this)->pkey;
#ifdef VAR_RANGES
		logval("Alice:data3.key", ((P0 *)_this)->data3.key);
#endif
		;
		/* merge: data3.info1 = pnonce(17, 15, 17) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->data3.info1;
		((P0 *)_this)->data3.info1 = ((P0 *)_this)->pnonce;
#ifdef VAR_RANGES
		logval("Alice:data3.info1", ((P0 *)_this)->data3.info1);
#endif
		;
		/* merge: data3.info2 = 0(17, 16, 17) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->data3.info2;
		((P0 *)_this)->data3.info2 = 0;
#ifdef VAR_RANGES
		logval("Alice:data3.info2", ((P0 *)_this)->data3.info2);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 65: // STATE 17 - PA2-P1-rayhanul.pml:50 - [network!msg3,partnerA,data3.key,data3.info1,data3.info2] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
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
		sprintf(simtmp, "%d", ((P0 *)_this)->data3.info2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.network, 0, 10, now.partnerA, ((P0 *)_this)->data3.key, ((P0 *)_this)->data3.info1, ((P0 *)_this)->data3.info2, 5);
		{ boq = now.network; };
		_m = 2; goto P999; /* 0 */
	case 66: // STATE 18 - PA2-P1-rayhanul.pml:51 - [statusA = ok] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.statusA;
		now.statusA = 14;
#ifdef VAR_RANGES
		logval("statusA", now.statusA);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 19 - PA2-P1-rayhanul.pml:52 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
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

