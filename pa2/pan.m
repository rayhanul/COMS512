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

		 /* CLAIM ltl_0 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[4]==male))&&(stones[5]==male))&&(stones[6]==male)))))] (6:0:0 - 1)
		
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
		reached[2][1] = 1;
		if (!( !( !(((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[4]==2))&&(now.stones[5]==2))&&(now.stones[6]==2))))))
			continue;
		/* merge: assert(!(!(!(((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[4]==male))&&(stones[5]==male))&&(stones[6]==male))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !(((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[4]==2))&&(now.stones[5]==2))&&(now.stones[6]==2))))), " !( !( !(((((((stones[0]==1)&&(stones[1]==1))&&(stones[2]==1))&&(stones[4]==2))&&(stones[5]==2))&&(stones[6]==2)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
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
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - PA2-P2-rayhanul.pml:119 - [stones[0] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.stones[0];
		now.stones[0] = 2;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - PA2-P2-rayhanul.pml:120 - [stones[1] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - PA2-P2-rayhanul.pml:121 - [stones[2] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - PA2-P2-rayhanul.pml:122 - [stones[3] = none] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - PA2-P2-rayhanul.pml:123 - [stones[4] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - PA2-P2-rayhanul.pml:124 - [stones[5] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.stones[5];
		now.stones[5] = 1;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - PA2-P2-rayhanul.pml:125 - [stones[6] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = now.stones[6];
		now.stones[6] = 1;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - PA2-P2-rayhanul.pml:128 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_process */
	case 13: // STATE 1 - PA2-P2-rayhanul.pml:75 - [((stones[0]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.stones[0]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',1,0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		Printf("Female Frog jumps from %d to %d\n", 1, 0);
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - PA2-P2-rayhanul.pml:68 - [(((stones[0]==none)&&(stones[1]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((now.stones[0]==3)&&(now.stones[1]==1))))
			continue;
		/* merge: stones[0] = female(154, 4, 154) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 1;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[1] = none(154, 5, 154) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 15, 154) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: // STATE 8 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',2,0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Female Frog jumps from %d to %d\n", 2, 0);
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 9 - PA2-P2-rayhanul.pml:68 - [(((stones[0]==none)&&(stones[2]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((now.stones[0]==3)&&(now.stones[2]==1))))
			continue;
		/* merge: stones[0] = female(154, 10, 154) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 1;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[2] = none(154, 11, 154) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 15, 154) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 16 - PA2-P2-rayhanul.pml:79 - [((stones[1]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.stones[1]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',0,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("Male Frog jumps from %d to %d\n", 0, 1);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - PA2-P2-rayhanul.pml:61 - [(((stones[1]==none)&&(stones[0]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[0]==2))))
			continue;
		/* merge: stones[1] = male(154, 19, 154) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[0] = none(154, 20, 154) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[0];
		now.stones[0] = 3;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: .(goto)(0, 36, 154) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 21: // STATE 23 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',2,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("Female Frog jumps from %d to %d\n", 2, 1);
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 24 - PA2-P2-rayhanul.pml:68 - [(((stones[1]==none)&&(stones[2]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[2]==1))))
			continue;
		/* merge: stones[1] = female(154, 25, 154) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 1;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[2] = none(154, 26, 154) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 36, 154) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: // STATE 29 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',3,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("Female Frog jumps from %d to %d\n", 3, 1);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 30 - PA2-P2-rayhanul.pml:68 - [(((stones[1]==none)&&(stones[3]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[3]==1))))
			continue;
		/* merge: stones[1] = female(154, 31, 154) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 1;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[3] = none(154, 32, 154) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 36, 154) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 25: // STATE 37 - PA2-P2-rayhanul.pml:84 - [((stones[2]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.stones[2]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 38 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',0,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		Printf("Male Frog jumps from %d to %d\n", 0, 2);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 39 - PA2-P2-rayhanul.pml:61 - [(((stones[2]==none)&&(stones[0]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[0]==2))))
			continue;
		/* merge: stones[2] = male(154, 40, 154) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[0] = none(154, 41, 154) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[0];
		now.stones[0] = 3;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: .(goto)(0, 63, 154) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 44 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',1,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		Printf("Male Frog jumps from %d to %d\n", 1, 2);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 45 - PA2-P2-rayhanul.pml:61 - [(((stones[2]==none)&&(stones[1]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[1]==2))))
			continue;
		/* merge: stones[2] = male(154, 46, 154) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[1] = none(154, 47, 154) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 63, 154) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: // STATE 50 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',3,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		Printf("Female Frog jumps from %d to %d\n", 3, 2);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 51 - PA2-P2-rayhanul.pml:68 - [(((stones[2]==none)&&(stones[3]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[3]==1))))
			continue;
		/* merge: stones[2] = female(154, 52, 154) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 1;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[3] = none(154, 53, 154) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 63, 154) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 32: // STATE 56 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',4,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		Printf("Female Frog jumps from %d to %d\n", 4, 2);
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 57 - PA2-P2-rayhanul.pml:68 - [(((stones[2]==none)&&(stones[4]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[4]==1))))
			continue;
		/* merge: stones[2] = female(154, 58, 154) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 1;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[4] = none(154, 59, 154) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 63, 154) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 34: // STATE 64 - PA2-P2-rayhanul.pml:90 - [((stones[3]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!((now.stones[3]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 65 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',1,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		Printf("Male Frog jumps from %d to %d\n", 1, 3);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 66 - PA2-P2-rayhanul.pml:61 - [(((stones[3]==none)&&(stones[1]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[1]==2))))
			continue;
		/* merge: stones[3] = male(154, 67, 154) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[1] = none(154, 68, 154) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 90, 154) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 37: // STATE 71 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',2,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		Printf("Male Frog jumps from %d to %d\n", 2, 3);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 72 - PA2-P2-rayhanul.pml:61 - [(((stones[3]==none)&&(stones[2]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[2]==2))))
			continue;
		/* merge: stones[3] = male(154, 73, 154) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[2] = none(154, 74, 154) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 90, 154) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 39: // STATE 77 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',4,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		Printf("Female Frog jumps from %d to %d\n", 4, 3);
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 78 - PA2-P2-rayhanul.pml:68 - [(((stones[3]==none)&&(stones[4]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[4]==1))))
			continue;
		/* merge: stones[3] = female(154, 79, 154) */
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 1;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[4] = none(154, 80, 154) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 90, 154) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 83 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',5,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		Printf("Female Frog jumps from %d to %d\n", 5, 3);
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 84 - PA2-P2-rayhanul.pml:68 - [(((stones[3]==none)&&(stones[5]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[5]==1))))
			continue;
		/* merge: stones[3] = female(154, 85, 154) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 1;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[5] = none(154, 86, 154) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 90, 154) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 43: // STATE 91 - PA2-P2-rayhanul.pml:96 - [((stones[4]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((now.stones[4]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 92 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',3,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		Printf("Male Frog jumps from %d to %d\n", 3, 4);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 93 - PA2-P2-rayhanul.pml:61 - [(((stones[4]==none)&&(stones[3]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[3]==2))))
			continue;
		/* merge: stones[4] = male(154, 94, 154) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[3] = none(154, 95, 154) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 117, 154) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 46: // STATE 98 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',2,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		Printf("Male Frog jumps from %d to %d\n", 2, 4);
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 99 - PA2-P2-rayhanul.pml:61 - [(((stones[4]==none)&&(stones[2]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[2]==2))))
			continue;
		/* merge: stones[4] = male(154, 100, 154) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[2] = none(154, 101, 154) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 117, 154) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 48: // STATE 104 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',5,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		Printf("Female Frog jumps from %d to %d\n", 5, 4);
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 105 - PA2-P2-rayhanul.pml:68 - [(((stones[4]==none)&&(stones[5]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[5]==1))))
			continue;
		/* merge: stones[4] = female(154, 106, 154) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[5] = none(154, 107, 154) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 117, 154) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 110 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',6,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		Printf("Female Frog jumps from %d to %d\n", 6, 4);
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 111 - PA2-P2-rayhanul.pml:68 - [(((stones[4]==none)&&(stones[6]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[6]==1))))
			continue;
		/* merge: stones[4] = female(154, 112, 154) */
		reached[0][112] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[6] = none(154, 113, 154) */
		reached[0][113] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 117, 154) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 52: // STATE 118 - PA2-P2-rayhanul.pml:102 - [((stones[5]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((now.stones[5]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 119 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',3,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		Printf("Male Frog jumps from %d to %d\n", 3, 5);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 120 - PA2-P2-rayhanul.pml:61 - [(((stones[5]==none)&&(stones[3]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[3]==2))))
			continue;
		/* merge: stones[5] = male(154, 121, 154) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[3] = none(154, 122, 154) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 138, 154) */
		reached[0][138] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 55: // STATE 125 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',4,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][125] = 1;
		Printf("Male Frog jumps from %d to %d\n", 4, 5);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 126 - PA2-P2-rayhanul.pml:61 - [(((stones[5]==none)&&(stones[4]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[4]==2))))
			continue;
		/* merge: stones[5] = male(154, 127, 154) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[4] = none(154, 128, 154) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 138, 154) */
		reached[0][138] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 57: // STATE 131 - PA2-P2-rayhanul.pml:67 - [printf('Female Frog jumps from %d to %d\\n',6,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		Printf("Female Frog jumps from %d to %d\n", 6, 5);
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 132 - PA2-P2-rayhanul.pml:68 - [(((stones[5]==none)&&(stones[6]==female)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[6]==1))))
			continue;
		/* merge: stones[5] = female(154, 133, 154) */
		reached[0][133] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 1;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[6] = none(154, 134, 154) */
		reached[0][134] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 138, 154) */
		reached[0][138] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 59: // STATE 139 - PA2-P2-rayhanul.pml:107 - [((stones[6]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][139] = 1;
		if (!((now.stones[6]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 140 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',5,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		Printf("Male Frog jumps from %d to %d\n", 5, 6);
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 141 - PA2-P2-rayhanul.pml:61 - [(((stones[6]==none)&&(stones[5]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][141] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[5]==2))))
			continue;
		/* merge: stones[6] = male(154, 142, 154) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[5] = none(154, 143, 154) */
		reached[0][143] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 153, 154) */
		reached[0][153] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 62: // STATE 146 - PA2-P2-rayhanul.pml:60 - [printf('Male Frog jumps from %d to %d\\n',4,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		Printf("Male Frog jumps from %d to %d\n", 4, 6);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 147 - PA2-P2-rayhanul.pml:61 - [(((stones[6]==none)&&(stones[4]==male)))] (154:0:2 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[4]==2))))
			continue;
		/* merge: stones[6] = male(154, 148, 154) */
		reached[0][148] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[4] = none(154, 149, 154) */
		reached[0][149] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 153, 154) */
		reached[0][153] = 1;
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[0][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 64: // STATE 157 - PA2-P2-rayhanul.pml:113 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][157] = 1;
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

