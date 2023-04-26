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
		reached[3][1] = 1;
		if (!( !( !(((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[4]==2))&&(now.stones[5]==2))&&(now.stones[6]==2))))))
			continue;
		/* merge: assert(!(!(!(((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[4]==male))&&(stones[5]==male))&&(stones[6]==male))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !( !(((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[4]==2))&&(now.stones[5]==2))&&(now.stones[6]==2))))), " !( !( !(((((((stones[0]==1)&&(stones[1]==1))&&(stones[2]==1))&&(stones[4]==2))&&(stones[5]==2))&&(stones[6]==2)))))", II, tt, t);
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

		 /* PROC :init: */
	case 5: // STATE 1 - PA2-P2-rayhanul.pml:108 - [stones[0] = male] (0:15:8 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 2;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[1] = male(15, 2, 15) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[2] = male(15, 3, 15) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[2] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[3] = none(15, 4, 15) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[3] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[4] = female(15, 5, 15) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[4] = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[5] = female(15, 6, 15) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[5] = now.stones[5];
		now.stones[5] = 1;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[6] = female(15, 7, 15) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[6] = now.stones[6];
		now.stones[6] = 1;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: I = 0(15, 8, 15) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[7] = ((int)((P2 *)_this)->_4_5_I);
		((P2 *)_this)->_4_5_I = 0;
#ifdef VAR_RANGES
		logval(":init::I", ((int)((P2 *)_this)->_4_5_I));
#endif
		;
		/* merge: .(goto)(0, 16, 15) */
		reached[2][16] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 6: // STATE 9 - PA2-P2-rayhanul.pml:118 - [((I==(7/2)))] (17:0:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((int)((P2 *)_this)->_4_5_I)==(7/2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_I */  (trpt+1)->bup.oval = ((P2 *)_this)->_4_5_I;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_4_5_I = 0;
		/* merge: goto :b2(0, 10, 17) */
		reached[2][10] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 7: // STATE 12 - PA2-P2-rayhanul.pml:120 - [(run maleFrog(I))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!(addproc(II, 1, 0, ((int)((P2 *)_this)->_4_5_I))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - PA2-P2-rayhanul.pml:121 - [(run femaleFrog(((7-I)-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(addproc(II, 1, 1, ((7-((int)((P2 *)_this)->_4_5_I))-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 14 - PA2-P2-rayhanul.pml:122 - [I = (I+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_5_I);
		((P2 *)_this)->_4_5_I = (((int)((P2 *)_this)->_4_5_I)+1);
#ifdef VAR_RANGES
		logval(":init::I", ((int)((P2 *)_this)->_4_5_I));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 19 - PA2-P2-rayhanul.pml:125 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC femaleFrog */
	case 11: // STATE 1 - PA2-P2-rayhanul.pml:78 - [printf('Female Frog jumps from %d to %d\\n',position,(position-1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Female Frog jumps from %d to %d\n", ((int)((P1 *)_this)->position), (((int)((P1 *)_this)->position)-1));
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - PA2-P2-rayhanul.pml:79 - [(((position>0)&&(stones[(position-1)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((((int)((P1 *)_this)->position)>0)&&(now.stones[ Index((((int)((P1 *)_this)->position)-1), 7) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 3, 15) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P1 *)_this)->position), 7) ];
		now.stones[ Index(((P1 *)_this)->position, 7) ] = 3;
#ifdef VAR_RANGES
		logval("stones[femaleFrog:position]", now.stones[ Index(((int)((P1 *)_this)->position), 7) ]);
#endif
		;
		/* merge: stones[(position-1)] = female(15, 4, 15) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P1 *)_this)->position)-1), 7) ];
		now.stones[ Index((((P1 *)_this)->position-1), 7) ] = 1;
#ifdef VAR_RANGES
		logval("stones[(femaleFrog:position-1)]", now.stones[ Index((((int)((P1 *)_this)->position)-1), 7) ]);
#endif
		;
		/* merge: position = (position-1)(15, 5, 15) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->position);
		((P1 *)_this)->position = (((int)((P1 *)_this)->position)-1);
#ifdef VAR_RANGES
		logval("femaleFrog:position", ((int)((P1 *)_this)->position));
#endif
		;
		/* merge: .(goto)(0, 16, 15) */
		reached[1][16] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: // STATE 8 - PA2-P2-rayhanul.pml:86 - [printf('Female Frog jumps from %d to %d\\n',position,(position-2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("Female Frog jumps from %d to %d\n", ((int)((P1 *)_this)->position), (((int)((P1 *)_this)->position)-2));
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - PA2-P2-rayhanul.pml:87 - [((((position>1)&&(stones[(position-1)]!=none))&&(stones[(position-2)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((((int)((P1 *)_this)->position)>1)&&(now.stones[ Index((((int)((P1 *)_this)->position)-1), 7) ]!=3))&&(now.stones[ Index((((int)((P1 *)_this)->position)-2), 7) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 10, 15) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P1 *)_this)->position), 7) ];
		now.stones[ Index(((P1 *)_this)->position, 7) ] = 3;
#ifdef VAR_RANGES
		logval("stones[femaleFrog:position]", now.stones[ Index(((int)((P1 *)_this)->position), 7) ]);
#endif
		;
		/* merge: stones[(position-2)] = female(15, 11, 15) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P1 *)_this)->position)-2), 7) ];
		now.stones[ Index((((P1 *)_this)->position-2), 7) ] = 1;
#ifdef VAR_RANGES
		logval("stones[(femaleFrog:position-2)]", now.stones[ Index((((int)((P1 *)_this)->position)-2), 7) ]);
#endif
		;
		/* merge: position = (position-2)(15, 12, 15) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->position);
		((P1 *)_this)->position = (((int)((P1 *)_this)->position)-2);
#ifdef VAR_RANGES
		logval("femaleFrog:position", ((int)((P1 *)_this)->position));
#endif
		;
		/* merge: .(goto)(0, 16, 15) */
		reached[1][16] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 15: // STATE 18 - PA2-P2-rayhanul.pml:103 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC maleFrog */
	case 16: // STATE 1 - PA2-P2-rayhanul.pml:62 - [printf('Male Frog jumps from %d to %d\\n',position,(position+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("Male Frog jumps from %d to %d\n", ((int)((P0 *)_this)->position), (((int)((P0 *)_this)->position)+1));
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - PA2-P2-rayhanul.pml:63 - [(((position<(7-1))&&(stones[(position+1)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((((int)((P0 *)_this)->position)<(7-1))&&(now.stones[ Index((((int)((P0 *)_this)->position)+1), 7) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 3, 15) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P0 *)_this)->position), 7) ];
		now.stones[ Index(((P0 *)_this)->position, 7) ] = 3;
#ifdef VAR_RANGES
		logval("stones[maleFrog:position]", now.stones[ Index(((int)((P0 *)_this)->position), 7) ]);
#endif
		;
		/* merge: stones[(position+1)] = male(15, 4, 15) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P0 *)_this)->position)+1), 7) ];
		now.stones[ Index((((P0 *)_this)->position+1), 7) ] = 2;
#ifdef VAR_RANGES
		logval("stones[(maleFrog:position+1)]", now.stones[ Index((((int)((P0 *)_this)->position)+1), 7) ]);
#endif
		;
		/* merge: position = (position+1)(15, 5, 15) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->position);
		((P0 *)_this)->position = (((int)((P0 *)_this)->position)+1);
#ifdef VAR_RANGES
		logval("maleFrog:position", ((int)((P0 *)_this)->position));
#endif
		;
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 8 - PA2-P2-rayhanul.pml:70 - [printf('Male Frog jumps from %d to %d\\n',position,(position+2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Male Frog jumps from %d to %d\n", ((int)((P0 *)_this)->position), (((int)((P0 *)_this)->position)+2));
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 9 - PA2-P2-rayhanul.pml:71 - [((((position<(7-2))&&(stones[(position+1)]!=none))&&(stones[(position+2)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((((int)((P0 *)_this)->position)<(7-2))&&(now.stones[ Index((((int)((P0 *)_this)->position)+1), 7) ]!=3))&&(now.stones[ Index((((int)((P0 *)_this)->position)+2), 7) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 10, 15) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P0 *)_this)->position), 7) ];
		now.stones[ Index(((P0 *)_this)->position, 7) ] = 3;
#ifdef VAR_RANGES
		logval("stones[maleFrog:position]", now.stones[ Index(((int)((P0 *)_this)->position), 7) ]);
#endif
		;
		/* merge: stones[(position+2)] = male(15, 11, 15) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P0 *)_this)->position)+2), 7) ];
		now.stones[ Index((((P0 *)_this)->position+2), 7) ] = 2;
#ifdef VAR_RANGES
		logval("stones[(maleFrog:position+2)]", now.stones[ Index((((int)((P0 *)_this)->position)+2), 7) ]);
#endif
		;
		/* merge: position = (position+2)(15, 12, 15) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->position);
		((P0 *)_this)->position = (((int)((P0 *)_this)->position)+2);
#ifdef VAR_RANGES
		logval("maleFrog:position", ((int)((P0 *)_this)->position));
#endif
		;
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 18 - PA2-P2-rayhanul.pml:96 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
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

