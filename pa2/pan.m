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
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[9]==male))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male)))))] (6:0:0 - 1)
		
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
		if (!( !( !(((((((((((((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[3]==1))&&(now.stones[4]==1))&&(now.stones[5]==1))&&(now.stones[6]==1))&&(now.stones[7]==1))&&(now.stones[9]==2))&&(now.stones[10]==2))&&(now.stones[11]==2))&&(now.stones[12]==2))&&(now.stones[13]==2))&&(now.stones[14]==2))&&(now.stones[15]==2))&&(now.stones[16]==2))))))
			continue;
		/* merge: assert(!(!(!(((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[9]==male))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !( !(((((((((((((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[3]==1))&&(now.stones[4]==1))&&(now.stones[5]==1))&&(now.stones[6]==1))&&(now.stones[7]==1))&&(now.stones[9]==2))&&(now.stones[10]==2))&&(now.stones[11]==2))&&(now.stones[12]==2))&&(now.stones[13]==2))&&(now.stones[14]==2))&&(now.stones[15]==2))&&(now.stones[16]==2))))), " !( !( !(((((((((((((((((stones[0]==1)&&(stones[1]==1))&&(stones[2]==1))&&(stones[3]==1))&&(stones[4]==1))&&(stones[5]==1))&&(stones[6]==1))&&(stones[7]==1))&&(stones[9]==2))&&(stones[10]==2))&&(stones[11]==2))&&(stones[12]==2))&&(stones[13]==2))&&(stones[14]==2))&&(stones[15]==2))&&(stones[16]==2)))))", II, tt, t);
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
	case 5: // STATE 1 - pa_2_frogs_N_8.pml:75 - [stones[0] = male] (0:25:18 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(18);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 2;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[1] = male(25, 2, 25) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[2] = male(25, 3, 25) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[2] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[3] = male(25, 4, 25) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[3] = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[4] = male(25, 5, 25) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[4] = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[5] = male(25, 6, 25) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[5] = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[6] = male(25, 7, 25) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[6] = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[7] = male(25, 8, 25) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[7] = now.stones[7];
		now.stones[7] = 2;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: stones[8] = none(25, 9, 25) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[8] = now.stones[8];
		now.stones[8] = 3;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: stones[9] = female(25, 10, 25) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[9] = now.stones[9];
		now.stones[9] = 1;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: stones[10] = female(25, 11, 25) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[10] = now.stones[10];
		now.stones[10] = 1;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: stones[11] = female(25, 12, 25) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[11] = now.stones[11];
		now.stones[11] = 1;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: stones[12] = female(25, 13, 25) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[12] = now.stones[12];
		now.stones[12] = 1;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: stones[13] = female(25, 14, 25) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[13] = now.stones[13];
		now.stones[13] = 1;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: stones[14] = female(25, 15, 25) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals[14] = now.stones[14];
		now.stones[14] = 1;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: stones[15] = female(25, 16, 25) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[15] = now.stones[15];
		now.stones[15] = 1;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: stones[16] = female(25, 17, 25) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[16] = now.stones[16];
		now.stones[16] = 1;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: I = 0(25, 18, 25) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[17] = ((int)((P2 *)_this)->_4_5_I);
		((P2 *)_this)->_4_5_I = 0;
#ifdef VAR_RANGES
		logval(":init::I", ((int)((P2 *)_this)->_4_5_I));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 18 */
	case 6: // STATE 19 - pa_2_frogs_N_8.pml:96 - [((I==(17/2)))] (27:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!((((int)((P2 *)_this)->_4_5_I)==(17/2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_I */  (trpt+1)->bup.oval = ((P2 *)_this)->_4_5_I;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_4_5_I = 0;
		/* merge: goto :b2(0, 20, 27) */
		reached[2][20] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 7: // STATE 22 - pa_2_frogs_N_8.pml:98 - [(run maleFrog(I))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!(addproc(II, 1, 0, ((int)((P2 *)_this)->_4_5_I))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 23 - pa_2_frogs_N_8.pml:99 - [(run femaleFrog(((17-I)-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (!(addproc(II, 1, 1, ((17-((int)((P2 *)_this)->_4_5_I))-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 24 - pa_2_frogs_N_8.pml:100 - [I = (I+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_5_I);
		((P2 *)_this)->_4_5_I = (((int)((P2 *)_this)->_4_5_I)+1);
#ifdef VAR_RANGES
		logval(":init::I", ((int)((P2 *)_this)->_4_5_I));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 29 - pa_2_frogs_N_8.pml:103 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC femaleFrog */
	case 11: // STATE 1 - pa_2_frogs_N_8.pml:45 - [printf('Female Frog jumps from %d to %d\\n',position,(position-1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Female Frog jumps from %d to %d\n", ((int)((P1 *)_this)->position), (((int)((P1 *)_this)->position)-1));
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - pa_2_frogs_N_8.pml:47 - [(((position>0)&&(stones[(position-1)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((((int)((P1 *)_this)->position)>0)&&(now.stones[ Index((((int)((P1 *)_this)->position)-1), 17) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 3, 15) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P1 *)_this)->position), 17) ];
		now.stones[ Index(((P1 *)_this)->position, 17) ] = 3;
#ifdef VAR_RANGES
		logval("stones[femaleFrog:position]", now.stones[ Index(((int)((P1 *)_this)->position), 17) ]);
#endif
		;
		/* merge: stones[(position-1)] = female(15, 4, 15) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P1 *)_this)->position)-1), 17) ];
		now.stones[ Index((((P1 *)_this)->position-1), 17) ] = 1;
#ifdef VAR_RANGES
		logval("stones[(femaleFrog:position-1)]", now.stones[ Index((((int)((P1 *)_this)->position)-1), 17) ]);
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
	case 13: // STATE 8 - pa_2_frogs_N_8.pml:52 - [printf('Female Frog jumps from %d to %d\\n',position,(position-2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("Female Frog jumps from %d to %d\n", ((int)((P1 *)_this)->position), (((int)((P1 *)_this)->position)-2));
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - pa_2_frogs_N_8.pml:54 - [((((position>1)&&(stones[(position-1)]!=none))&&(stones[(position-2)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((((int)((P1 *)_this)->position)>1)&&(now.stones[ Index((((int)((P1 *)_this)->position)-1), 17) ]!=3))&&(now.stones[ Index((((int)((P1 *)_this)->position)-2), 17) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 10, 15) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P1 *)_this)->position), 17) ];
		now.stones[ Index(((P1 *)_this)->position, 17) ] = 3;
#ifdef VAR_RANGES
		logval("stones[femaleFrog:position]", now.stones[ Index(((int)((P1 *)_this)->position), 17) ]);
#endif
		;
		/* merge: stones[(position-2)] = female(15, 11, 15) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P1 *)_this)->position)-2), 17) ];
		now.stones[ Index((((P1 *)_this)->position-2), 17) ] = 1;
#ifdef VAR_RANGES
		logval("stones[(femaleFrog:position-2)]", now.stones[ Index((((int)((P1 *)_this)->position)-2), 17) ]);
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
	case 15: // STATE 18 - pa_2_frogs_N_8.pml:70 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC maleFrog */
	case 16: // STATE 1 - pa_2_frogs_N_8.pml:31 - [printf('Male Frog jumps from %d to %d\\n',position,(position+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("Male Frog jumps from %d to %d\n", ((int)((P0 *)_this)->position), (((int)((P0 *)_this)->position)+1));
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - pa_2_frogs_N_8.pml:33 - [(((position<(17-1))&&(stones[(position+1)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((((int)((P0 *)_this)->position)<(17-1))&&(now.stones[ Index((((int)((P0 *)_this)->position)+1), 17) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 3, 15) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P0 *)_this)->position), 17) ];
		now.stones[ Index(((P0 *)_this)->position, 17) ] = 3;
#ifdef VAR_RANGES
		logval("stones[maleFrog:position]", now.stones[ Index(((int)((P0 *)_this)->position), 17) ]);
#endif
		;
		/* merge: stones[(position+1)] = male(15, 4, 15) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P0 *)_this)->position)+1), 17) ];
		now.stones[ Index((((P0 *)_this)->position+1), 17) ] = 2;
#ifdef VAR_RANGES
		logval("stones[(maleFrog:position+1)]", now.stones[ Index((((int)((P0 *)_this)->position)+1), 17) ]);
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
	case 18: // STATE 8 - pa_2_frogs_N_8.pml:38 - [printf('Male Frog jumps from %d to %d\\n',position,(position+2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Male Frog jumps from %d to %d\n", ((int)((P0 *)_this)->position), (((int)((P0 *)_this)->position)+2));
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 9 - pa_2_frogs_N_8.pml:40 - [((((position<(17-2))&&(stones[(position+1)]!=none))&&(stones[(position+2)]==none)))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((((int)((P0 *)_this)->position)<(17-2))&&(now.stones[ Index((((int)((P0 *)_this)->position)+1), 17) ]!=3))&&(now.stones[ Index((((int)((P0 *)_this)->position)+2), 17) ]==3))))
			continue;
		/* merge: stones[position] = none(15, 10, 15) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.stones[ Index(((int)((P0 *)_this)->position), 17) ];
		now.stones[ Index(((P0 *)_this)->position, 17) ] = 3;
#ifdef VAR_RANGES
		logval("stones[maleFrog:position]", now.stones[ Index(((int)((P0 *)_this)->position), 17) ]);
#endif
		;
		/* merge: stones[(position+2)] = male(15, 11, 15) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[ Index((((int)((P0 *)_this)->position)+2), 17) ];
		now.stones[ Index((((P0 *)_this)->position+2), 17) ] = 2;
#ifdef VAR_RANGES
		logval("stones[(maleFrog:position+2)]", now.stones[ Index((((int)((P0 *)_this)->position)+2), 17) ]);
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
	case 20: // STATE 18 - pa_2_frogs_N_8.pml:63 - [-end-] (0:0:0 - 1)
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

