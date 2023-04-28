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
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[8]==female))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male))&&(stones[17]==male))&&(stones[18]==male)))))] (6:0:0 - 1)
		
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
		if (!( !( !(((((((((((((((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[3]==1))&&(now.stones[4]==1))&&(now.stones[5]==1))&&(now.stones[6]==1))&&(now.stones[7]==1))&&(now.stones[8]==1))&&(now.stones[10]==2))&&(now.stones[11]==2))&&(now.stones[12]==2))&&(now.stones[13]==2))&&(now.stones[14]==2))&&(now.stones[15]==2))&&(now.stones[16]==2))&&(now.stones[17]==2))&&(now.stones[18]==2))))))
			continue;
		/* merge: assert(!(!(!(((((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[8]==female))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male))&&(stones[17]==male))&&(stones[18]==male))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !(((((((((((((((((((now.stones[0]==1)&&(now.stones[1]==1))&&(now.stones[2]==1))&&(now.stones[3]==1))&&(now.stones[4]==1))&&(now.stones[5]==1))&&(now.stones[6]==1))&&(now.stones[7]==1))&&(now.stones[8]==1))&&(now.stones[10]==2))&&(now.stones[11]==2))&&(now.stones[12]==2))&&(now.stones[13]==2))&&(now.stones[14]==2))&&(now.stones[15]==2))&&(now.stones[16]==2))&&(now.stones[17]==2))&&(now.stones[18]==2))))), " !( !( !(((((((((((((((((((stones[0]==1)&&(stones[1]==1))&&(stones[2]==1))&&(stones[3]==1))&&(stones[4]==1))&&(stones[5]==1))&&(stones[6]==1))&&(stones[7]==1))&&(stones[8]==1))&&(stones[10]==2))&&(stones[11]==2))&&(stones[12]==2))&&(stones[13]==2))&&(stones[14]==2))&&(stones[15]==2))&&(stones[16]==2))&&(stones[17]==2))&&(stones[18]==2)))))", II, tt, t);
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
	case 5: // STATE 1 - pa_2_frogs_N_9.pml:169 - [stones[0] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.stones[0];
		now.stones[0] = 2;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - pa_2_frogs_N_9.pml:170 - [stones[1] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - pa_2_frogs_N_9.pml:171 - [stones[2] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - pa_2_frogs_N_9.pml:172 - [stones[3] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - pa_2_frogs_N_9.pml:173 - [stones[4] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - pa_2_frogs_N_9.pml:174 - [stones[5] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - pa_2_frogs_N_9.pml:175 - [stones[6] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - pa_2_frogs_N_9.pml:176 - [stones[7] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = now.stones[7];
		now.stones[7] = 2;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - pa_2_frogs_N_9.pml:177 - [stones[8] = male] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = now.stones[8];
		now.stones[8] = 2;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - pa_2_frogs_N_9.pml:178 - [stones[9] = none] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.stones[9];
		now.stones[9] = 3;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - pa_2_frogs_N_9.pml:180 - [stones[10] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.stones[10];
		now.stones[10] = 1;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - pa_2_frogs_N_9.pml:182 - [stones[11] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.stones[11];
		now.stones[11] = 1;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - pa_2_frogs_N_9.pml:183 - [stones[12] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = now.stones[12];
		now.stones[12] = 1;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - pa_2_frogs_N_9.pml:184 - [stones[13] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = now.stones[13];
		now.stones[13] = 1;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - pa_2_frogs_N_9.pml:185 - [stones[14] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.stones[14];
		now.stones[14] = 1;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - pa_2_frogs_N_9.pml:186 - [stones[15] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.stones[15];
		now.stones[15] = 1;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - pa_2_frogs_N_9.pml:187 - [stones[16] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.stones[16];
		now.stones[16] = 1;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - pa_2_frogs_N_9.pml:188 - [stones[17] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = now.stones[17];
		now.stones[17] = 1;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - pa_2_frogs_N_9.pml:189 - [stones[18] = female] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = now.stones[18];
		now.stones[18] = 1;
#ifdef VAR_RANGES
		logval("stones[18]", now.stones[18]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - pa_2_frogs_N_9.pml:194 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_process */
	case 25: // STATE 1 - pa_2_frogs_N_9.pml:47 - [((stones[0]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.stones[0]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 2 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',1,0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		Printf("Female Frog jumps from %d to %d\n", 1, 0);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 3 - pa_2_frogs_N_9.pml:40 - [(((stones[0]==none)&&(stones[1]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((now.stones[0]==3)&&(now.stones[1]==1))))
			continue;
		/* merge: stones[0] = female(478, 4, 478) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 1;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[1] = none(478, 5, 478) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 15, 478) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 8 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',2,0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Female Frog jumps from %d to %d\n", 2, 0);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 9 - pa_2_frogs_N_9.pml:40 - [(((stones[0]==none)&&(stones[2]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((now.stones[0]==3)&&(now.stones[2]==1))))
			continue;
		/* merge: stones[0] = female(478, 10, 478) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[0];
		now.stones[0] = 1;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: stones[2] = none(478, 11, 478) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 15, 478) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: // STATE 16 - pa_2_frogs_N_9.pml:51 - [((stones[1]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.stones[1]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 17 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',0,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("Male Frog jumps from %d to %d\n", 0, 1);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 18 - pa_2_frogs_N_9.pml:33 - [(((stones[1]==none)&&(stones[0]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[0]==2))))
			continue;
		/* merge: stones[1] = male(478, 19, 478) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 2;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[0] = none(478, 20, 478) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[0];
		now.stones[0] = 3;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: .(goto)(0, 36, 478) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 33: // STATE 23 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',2,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("Female Frog jumps from %d to %d\n", 2, 1);
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 24 - pa_2_frogs_N_9.pml:40 - [(((stones[1]==none)&&(stones[2]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[2]==1))))
			continue;
		/* merge: stones[1] = female(478, 25, 478) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 1;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[2] = none(478, 26, 478) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 36, 478) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 35: // STATE 29 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',3,1)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("Female Frog jumps from %d to %d\n", 3, 1);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 30 - pa_2_frogs_N_9.pml:40 - [(((stones[1]==none)&&(stones[3]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!(((now.stones[1]==3)&&(now.stones[3]==1))))
			continue;
		/* merge: stones[1] = female(478, 31, 478) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[1];
		now.stones[1] = 1;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: stones[3] = none(478, 32, 478) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 36, 478) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 37: // STATE 37 - pa_2_frogs_N_9.pml:57 - [((stones[2]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.stones[2]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 38 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',0,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		Printf("Male Frog jumps from %d to %d\n", 0, 2);
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 39 - pa_2_frogs_N_9.pml:33 - [(((stones[2]==none)&&(stones[0]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[0]==2))))
			continue;
		/* merge: stones[2] = male(478, 40, 478) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[0] = none(478, 41, 478) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[0];
		now.stones[0] = 3;
#ifdef VAR_RANGES
		logval("stones[0]", now.stones[0]);
#endif
		;
		/* merge: .(goto)(0, 63, 478) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 44 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',1,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		Printf("Male Frog jumps from %d to %d\n", 1, 2);
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 45 - pa_2_frogs_N_9.pml:33 - [(((stones[2]==none)&&(stones[1]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[1]==2))))
			continue;
		/* merge: stones[2] = male(478, 46, 478) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 2;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[1] = none(478, 47, 478) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 63, 478) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 42: // STATE 50 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',3,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		Printf("Female Frog jumps from %d to %d\n", 3, 2);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 51 - pa_2_frogs_N_9.pml:40 - [(((stones[2]==none)&&(stones[3]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[3]==1))))
			continue;
		/* merge: stones[2] = female(478, 52, 478) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 1;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[3] = none(478, 53, 478) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 63, 478) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 44: // STATE 56 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',4,2)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		Printf("Female Frog jumps from %d to %d\n", 4, 2);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 57 - pa_2_frogs_N_9.pml:40 - [(((stones[2]==none)&&(stones[4]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(((now.stones[2]==3)&&(now.stones[4]==1))))
			continue;
		/* merge: stones[2] = female(478, 58, 478) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[2];
		now.stones[2] = 1;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: stones[4] = none(478, 59, 478) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 63, 478) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 46: // STATE 64 - pa_2_frogs_N_9.pml:63 - [((stones[3]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!((now.stones[3]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 65 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',1,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		Printf("Male Frog jumps from %d to %d\n", 1, 3);
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 66 - pa_2_frogs_N_9.pml:33 - [(((stones[3]==none)&&(stones[1]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[1]==2))))
			continue;
		/* merge: stones[3] = male(478, 67, 478) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[1] = none(478, 68, 478) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[1];
		now.stones[1] = 3;
#ifdef VAR_RANGES
		logval("stones[1]", now.stones[1]);
#endif
		;
		/* merge: .(goto)(0, 90, 478) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 49: // STATE 71 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',2,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		Printf("Male Frog jumps from %d to %d\n", 2, 3);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 72 - pa_2_frogs_N_9.pml:33 - [(((stones[3]==none)&&(stones[2]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[2]==2))))
			continue;
		/* merge: stones[3] = male(478, 73, 478) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 2;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[2] = none(478, 74, 478) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 90, 478) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 77 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',4,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		Printf("Female Frog jumps from %d to %d\n", 4, 3);
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 78 - pa_2_frogs_N_9.pml:40 - [(((stones[3]==none)&&(stones[4]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[4]==1))))
			continue;
		/* merge: stones[3] = female(478, 79, 478) */
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 1;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[4] = none(478, 80, 478) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 90, 478) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: // STATE 83 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',5,3)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		Printf("Female Frog jumps from %d to %d\n", 5, 3);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 84 - pa_2_frogs_N_9.pml:40 - [(((stones[3]==none)&&(stones[5]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!(((now.stones[3]==3)&&(now.stones[5]==1))))
			continue;
		/* merge: stones[3] = female(478, 85, 478) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[3];
		now.stones[3] = 1;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: stones[5] = none(478, 86, 478) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 90, 478) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 55: // STATE 91 - pa_2_frogs_N_9.pml:69 - [((stones[4]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((now.stones[4]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 92 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',3,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		Printf("Male Frog jumps from %d to %d\n", 3, 4);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 93 - pa_2_frogs_N_9.pml:33 - [(((stones[4]==none)&&(stones[3]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[3]==2))))
			continue;
		/* merge: stones[4] = male(478, 94, 478) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[3] = none(478, 95, 478) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 117, 478) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 58: // STATE 98 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',2,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		Printf("Male Frog jumps from %d to %d\n", 2, 4);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 99 - pa_2_frogs_N_9.pml:33 - [(((stones[4]==none)&&(stones[2]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[2]==2))))
			continue;
		/* merge: stones[4] = male(478, 100, 478) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 2;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[2] = none(478, 101, 478) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[2];
		now.stones[2] = 3;
#ifdef VAR_RANGES
		logval("stones[2]", now.stones[2]);
#endif
		;
		/* merge: .(goto)(0, 117, 478) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 60: // STATE 104 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',5,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		Printf("Female Frog jumps from %d to %d\n", 5, 4);
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 105 - pa_2_frogs_N_9.pml:40 - [(((stones[4]==none)&&(stones[5]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[5]==1))))
			continue;
		/* merge: stones[4] = female(478, 106, 478) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[5] = none(478, 107, 478) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 117, 478) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 62: // STATE 110 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',6,4)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		Printf("Female Frog jumps from %d to %d\n", 6, 4);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 111 - pa_2_frogs_N_9.pml:40 - [(((stones[4]==none)&&(stones[6]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!(((now.stones[4]==3)&&(now.stones[6]==1))))
			continue;
		/* merge: stones[4] = female(478, 112, 478) */
		reached[0][112] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[4];
		now.stones[4] = 1;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: stones[6] = none(478, 113, 478) */
		reached[0][113] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 117, 478) */
		reached[0][117] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 64: // STATE 118 - pa_2_frogs_N_9.pml:76 - [((stones[5]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((now.stones[5]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 119 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',4,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		Printf("Male Frog jumps from %d to %d\n", 4, 5);
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 120 - pa_2_frogs_N_9.pml:33 - [(((stones[5]==none)&&(stones[4]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[4]==2))))
			continue;
		/* merge: stones[5] = male(478, 121, 478) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[4] = none(478, 122, 478) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 144, 478) */
		reached[0][144] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 67: // STATE 125 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',3,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][125] = 1;
		Printf("Male Frog jumps from %d to %d\n", 3, 5);
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 126 - pa_2_frogs_N_9.pml:33 - [(((stones[5]==none)&&(stones[3]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[3]==2))))
			continue;
		/* merge: stones[5] = male(478, 127, 478) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 2;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[3] = none(478, 128, 478) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[3];
		now.stones[3] = 3;
#ifdef VAR_RANGES
		logval("stones[3]", now.stones[3]);
#endif
		;
		/* merge: .(goto)(0, 144, 478) */
		reached[0][144] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 69: // STATE 131 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',6,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		Printf("Female Frog jumps from %d to %d\n", 6, 5);
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 132 - pa_2_frogs_N_9.pml:40 - [(((stones[5]==none)&&(stones[6]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[6]==1))))
			continue;
		/* merge: stones[5] = female(478, 133, 478) */
		reached[0][133] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 1;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[6] = none(478, 134, 478) */
		reached[0][134] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 144, 478) */
		reached[0][144] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 71: // STATE 137 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',7,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][137] = 1;
		Printf("Female Frog jumps from %d to %d\n", 7, 5);
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 138 - pa_2_frogs_N_9.pml:40 - [(((stones[5]==none)&&(stones[7]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		if (!(((now.stones[5]==3)&&(now.stones[7]==1))))
			continue;
		/* merge: stones[5] = female(478, 139, 478) */
		reached[0][139] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[5];
		now.stones[5] = 1;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: stones[7] = none(478, 140, 478) */
		reached[0][140] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[7];
		now.stones[7] = 3;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: .(goto)(0, 144, 478) */
		reached[0][144] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 73: // STATE 145 - pa_2_frogs_N_9.pml:82 - [((stones[6]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][145] = 1;
		if (!((now.stones[6]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 146 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',5,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		Printf("Male Frog jumps from %d to %d\n", 5, 6);
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 147 - pa_2_frogs_N_9.pml:33 - [(((stones[6]==none)&&(stones[5]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[5]==2))))
			continue;
		/* merge: stones[6] = male(478, 148, 478) */
		reached[0][148] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[5] = none(478, 149, 478) */
		reached[0][149] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 171, 478) */
		reached[0][171] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 76: // STATE 152 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',4,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		Printf("Male Frog jumps from %d to %d\n", 4, 6);
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 153 - pa_2_frogs_N_9.pml:33 - [(((stones[6]==none)&&(stones[4]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[4]==2))))
			continue;
		/* merge: stones[6] = male(478, 154, 478) */
		reached[0][154] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 2;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[4] = none(478, 155, 478) */
		reached[0][155] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[4];
		now.stones[4] = 3;
#ifdef VAR_RANGES
		logval("stones[4]", now.stones[4]);
#endif
		;
		/* merge: .(goto)(0, 171, 478) */
		reached[0][171] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 78: // STATE 158 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',7,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][158] = 1;
		Printf("Female Frog jumps from %d to %d\n", 7, 6);
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 159 - pa_2_frogs_N_9.pml:40 - [(((stones[6]==none)&&(stones[7]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][159] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[7]==1))))
			continue;
		/* merge: stones[6] = female(478, 160, 478) */
		reached[0][160] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 1;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[7] = none(478, 161, 478) */
		reached[0][161] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[7];
		now.stones[7] = 3;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: .(goto)(0, 171, 478) */
		reached[0][171] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 80: // STATE 164 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',8,6)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		Printf("Female Frog jumps from %d to %d\n", 8, 6);
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 165 - pa_2_frogs_N_9.pml:40 - [(((stones[6]==none)&&(stones[8]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		if (!(((now.stones[6]==3)&&(now.stones[8]==1))))
			continue;
		/* merge: stones[6] = female(478, 166, 478) */
		reached[0][166] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[6];
		now.stones[6] = 1;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: stones[8] = none(478, 167, 478) */
		reached[0][167] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[8];
		now.stones[8] = 3;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: .(goto)(0, 171, 478) */
		reached[0][171] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 82: // STATE 172 - pa_2_frogs_N_9.pml:88 - [((stones[7]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][172] = 1;
		if (!((now.stones[7]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 173 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',6,7)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][173] = 1;
		Printf("Male Frog jumps from %d to %d\n", 6, 7);
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 174 - pa_2_frogs_N_9.pml:33 - [(((stones[7]==none)&&(stones[6]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][174] = 1;
		if (!(((now.stones[7]==3)&&(now.stones[6]==2))))
			continue;
		/* merge: stones[7] = male(478, 175, 478) */
		reached[0][175] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[7];
		now.stones[7] = 2;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: stones[6] = none(478, 176, 478) */
		reached[0][176] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 198, 478) */
		reached[0][198] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 85: // STATE 179 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',5,7)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][179] = 1;
		Printf("Male Frog jumps from %d to %d\n", 5, 7);
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 180 - pa_2_frogs_N_9.pml:33 - [(((stones[7]==none)&&(stones[5]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][180] = 1;
		if (!(((now.stones[7]==3)&&(now.stones[5]==2))))
			continue;
		/* merge: stones[7] = male(478, 181, 478) */
		reached[0][181] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[7];
		now.stones[7] = 2;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: stones[5] = none(478, 182, 478) */
		reached[0][182] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[5];
		now.stones[5] = 3;
#ifdef VAR_RANGES
		logval("stones[5]", now.stones[5]);
#endif
		;
		/* merge: .(goto)(0, 198, 478) */
		reached[0][198] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 87: // STATE 185 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',8,7)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][185] = 1;
		Printf("Female Frog jumps from %d to %d\n", 8, 7);
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 186 - pa_2_frogs_N_9.pml:40 - [(((stones[7]==none)&&(stones[8]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][186] = 1;
		if (!(((now.stones[7]==3)&&(now.stones[8]==1))))
			continue;
		/* merge: stones[7] = female(478, 187, 478) */
		reached[0][187] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[7];
		now.stones[7] = 1;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: stones[8] = none(478, 188, 478) */
		reached[0][188] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[8];
		now.stones[8] = 3;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: .(goto)(0, 198, 478) */
		reached[0][198] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 89: // STATE 191 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',9,7)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		Printf("Female Frog jumps from %d to %d\n", 9, 7);
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 192 - pa_2_frogs_N_9.pml:40 - [(((stones[7]==none)&&(stones[9]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		if (!(((now.stones[7]==3)&&(now.stones[9]==1))))
			continue;
		/* merge: stones[7] = female(478, 193, 478) */
		reached[0][193] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[7];
		now.stones[7] = 1;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: stones[9] = none(478, 194, 478) */
		reached[0][194] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[9];
		now.stones[9] = 3;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: .(goto)(0, 198, 478) */
		reached[0][198] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 91: // STATE 199 - pa_2_frogs_N_9.pml:95 - [((stones[8]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][199] = 1;
		if (!((now.stones[8]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 200 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',7,8)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		Printf("Male Frog jumps from %d to %d\n", 7, 8);
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 201 - pa_2_frogs_N_9.pml:33 - [(((stones[8]==none)&&(stones[7]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		if (!(((now.stones[8]==3)&&(now.stones[7]==2))))
			continue;
		/* merge: stones[8] = male(478, 202, 478) */
		reached[0][202] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[8];
		now.stones[8] = 2;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: stones[7] = none(478, 203, 478) */
		reached[0][203] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[7];
		now.stones[7] = 3;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: .(goto)(0, 225, 478) */
		reached[0][225] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 94: // STATE 206 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',6,8)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][206] = 1;
		Printf("Male Frog jumps from %d to %d\n", 6, 8);
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 207 - pa_2_frogs_N_9.pml:33 - [(((stones[8]==none)&&(stones[6]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		if (!(((now.stones[8]==3)&&(now.stones[6]==2))))
			continue;
		/* merge: stones[8] = male(478, 208, 478) */
		reached[0][208] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[8];
		now.stones[8] = 2;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: stones[6] = none(478, 209, 478) */
		reached[0][209] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[6];
		now.stones[6] = 3;
#ifdef VAR_RANGES
		logval("stones[6]", now.stones[6]);
#endif
		;
		/* merge: .(goto)(0, 225, 478) */
		reached[0][225] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 96: // STATE 212 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',9,8)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		Printf("Female Frog jumps from %d to %d\n", 9, 8);
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 213 - pa_2_frogs_N_9.pml:40 - [(((stones[8]==none)&&(stones[9]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		if (!(((now.stones[8]==3)&&(now.stones[9]==1))))
			continue;
		/* merge: stones[8] = female(478, 214, 478) */
		reached[0][214] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[8];
		now.stones[8] = 1;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: stones[9] = none(478, 215, 478) */
		reached[0][215] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[9];
		now.stones[9] = 3;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: .(goto)(0, 225, 478) */
		reached[0][225] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 98: // STATE 218 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',10,8)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		Printf("Female Frog jumps from %d to %d\n", 10, 8);
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 219 - pa_2_frogs_N_9.pml:40 - [(((stones[8]==none)&&(stones[10]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][219] = 1;
		if (!(((now.stones[8]==3)&&(now.stones[10]==1))))
			continue;
		/* merge: stones[8] = female(478, 220, 478) */
		reached[0][220] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[8];
		now.stones[8] = 1;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: stones[10] = none(478, 221, 478) */
		reached[0][221] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[10];
		now.stones[10] = 3;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: .(goto)(0, 225, 478) */
		reached[0][225] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 100: // STATE 226 - pa_2_frogs_N_9.pml:101 - [((stones[9]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][226] = 1;
		if (!((now.stones[9]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 227 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',8,9)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		Printf("Male Frog jumps from %d to %d\n", 8, 9);
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 228 - pa_2_frogs_N_9.pml:33 - [(((stones[9]==none)&&(stones[8]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		if (!(((now.stones[9]==3)&&(now.stones[8]==2))))
			continue;
		/* merge: stones[9] = male(478, 229, 478) */
		reached[0][229] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[9];
		now.stones[9] = 2;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: stones[8] = none(478, 230, 478) */
		reached[0][230] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[8];
		now.stones[8] = 3;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: .(goto)(0, 252, 478) */
		reached[0][252] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 103: // STATE 233 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',7,9)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		Printf("Male Frog jumps from %d to %d\n", 7, 9);
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 234 - pa_2_frogs_N_9.pml:33 - [(((stones[9]==none)&&(stones[7]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		if (!(((now.stones[9]==3)&&(now.stones[7]==2))))
			continue;
		/* merge: stones[9] = male(478, 235, 478) */
		reached[0][235] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[9];
		now.stones[9] = 2;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: stones[7] = none(478, 236, 478) */
		reached[0][236] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[7];
		now.stones[7] = 3;
#ifdef VAR_RANGES
		logval("stones[7]", now.stones[7]);
#endif
		;
		/* merge: .(goto)(0, 252, 478) */
		reached[0][252] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 105: // STATE 239 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',10,9)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		Printf("Female Frog jumps from %d to %d\n", 10, 9);
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 240 - pa_2_frogs_N_9.pml:40 - [(((stones[9]==none)&&(stones[10]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		if (!(((now.stones[9]==3)&&(now.stones[10]==1))))
			continue;
		/* merge: stones[9] = female(478, 241, 478) */
		reached[0][241] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[9];
		now.stones[9] = 1;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: stones[10] = none(478, 242, 478) */
		reached[0][242] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[10];
		now.stones[10] = 3;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: .(goto)(0, 252, 478) */
		reached[0][252] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 107: // STATE 245 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',11,9)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		Printf("Female Frog jumps from %d to %d\n", 11, 9);
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 246 - pa_2_frogs_N_9.pml:40 - [(((stones[9]==none)&&(stones[11]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		if (!(((now.stones[9]==3)&&(now.stones[11]==1))))
			continue;
		/* merge: stones[9] = female(478, 247, 478) */
		reached[0][247] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[9];
		now.stones[9] = 1;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: stones[11] = none(478, 248, 478) */
		reached[0][248] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[11];
		now.stones[11] = 3;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: .(goto)(0, 252, 478) */
		reached[0][252] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 109: // STATE 253 - pa_2_frogs_N_9.pml:108 - [((stones[10]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		if (!((now.stones[10]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 254 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',9,10)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][254] = 1;
		Printf("Male Frog jumps from %d to %d\n", 9, 10);
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 255 - pa_2_frogs_N_9.pml:33 - [(((stones[10]==none)&&(stones[9]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		if (!(((now.stones[10]==3)&&(now.stones[9]==2))))
			continue;
		/* merge: stones[10] = male(478, 256, 478) */
		reached[0][256] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[10];
		now.stones[10] = 2;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: stones[9] = none(478, 257, 478) */
		reached[0][257] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[9];
		now.stones[9] = 3;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: .(goto)(0, 279, 478) */
		reached[0][279] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 112: // STATE 260 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',8,10)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][260] = 1;
		Printf("Male Frog jumps from %d to %d\n", 8, 10);
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 261 - pa_2_frogs_N_9.pml:33 - [(((stones[10]==none)&&(stones[8]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][261] = 1;
		if (!(((now.stones[10]==3)&&(now.stones[8]==2))))
			continue;
		/* merge: stones[10] = male(478, 262, 478) */
		reached[0][262] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[10];
		now.stones[10] = 2;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: stones[8] = none(478, 263, 478) */
		reached[0][263] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[8];
		now.stones[8] = 3;
#ifdef VAR_RANGES
		logval("stones[8]", now.stones[8]);
#endif
		;
		/* merge: .(goto)(0, 279, 478) */
		reached[0][279] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 114: // STATE 266 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',11,10)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][266] = 1;
		Printf("Female Frog jumps from %d to %d\n", 11, 10);
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 267 - pa_2_frogs_N_9.pml:40 - [(((stones[10]==none)&&(stones[11]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][267] = 1;
		if (!(((now.stones[10]==3)&&(now.stones[11]==1))))
			continue;
		/* merge: stones[10] = female(478, 268, 478) */
		reached[0][268] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[10];
		now.stones[10] = 1;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: stones[11] = none(478, 269, 478) */
		reached[0][269] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[11];
		now.stones[11] = 3;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: .(goto)(0, 279, 478) */
		reached[0][279] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 116: // STATE 272 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',12,10)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		Printf("Female Frog jumps from %d to %d\n", 12, 10);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 273 - pa_2_frogs_N_9.pml:40 - [(((stones[10]==none)&&(stones[12]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		if (!(((now.stones[10]==3)&&(now.stones[12]==1))))
			continue;
		/* merge: stones[10] = female(478, 274, 478) */
		reached[0][274] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[10];
		now.stones[10] = 1;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: stones[12] = none(478, 275, 478) */
		reached[0][275] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[12];
		now.stones[12] = 3;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: .(goto)(0, 279, 478) */
		reached[0][279] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 118: // STATE 280 - pa_2_frogs_N_9.pml:114 - [((stones[11]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][280] = 1;
		if (!((now.stones[11]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 281 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',10,11)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][281] = 1;
		Printf("Male Frog jumps from %d to %d\n", 10, 11);
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 282 - pa_2_frogs_N_9.pml:33 - [(((stones[11]==none)&&(stones[10]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][282] = 1;
		if (!(((now.stones[11]==3)&&(now.stones[10]==2))))
			continue;
		/* merge: stones[11] = male(478, 283, 478) */
		reached[0][283] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[11];
		now.stones[11] = 2;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: stones[10] = none(478, 284, 478) */
		reached[0][284] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[10];
		now.stones[10] = 3;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: .(goto)(0, 306, 478) */
		reached[0][306] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 121: // STATE 287 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',9,11)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][287] = 1;
		Printf("Male Frog jumps from %d to %d\n", 9, 11);
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 288 - pa_2_frogs_N_9.pml:33 - [(((stones[11]==none)&&(stones[9]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][288] = 1;
		if (!(((now.stones[11]==3)&&(now.stones[9]==2))))
			continue;
		/* merge: stones[11] = male(478, 289, 478) */
		reached[0][289] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[11];
		now.stones[11] = 2;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: stones[9] = none(478, 290, 478) */
		reached[0][290] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[9];
		now.stones[9] = 3;
#ifdef VAR_RANGES
		logval("stones[9]", now.stones[9]);
#endif
		;
		/* merge: .(goto)(0, 306, 478) */
		reached[0][306] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 123: // STATE 293 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',12,11)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		Printf("Female Frog jumps from %d to %d\n", 12, 11);
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 294 - pa_2_frogs_N_9.pml:40 - [(((stones[11]==none)&&(stones[12]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][294] = 1;
		if (!(((now.stones[11]==3)&&(now.stones[12]==1))))
			continue;
		/* merge: stones[11] = female(478, 295, 478) */
		reached[0][295] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[11];
		now.stones[11] = 1;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: stones[12] = none(478, 296, 478) */
		reached[0][296] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[12];
		now.stones[12] = 3;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: .(goto)(0, 306, 478) */
		reached[0][306] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 125: // STATE 299 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',13,11)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][299] = 1;
		Printf("Female Frog jumps from %d to %d\n", 13, 11);
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 300 - pa_2_frogs_N_9.pml:40 - [(((stones[11]==none)&&(stones[13]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		if (!(((now.stones[11]==3)&&(now.stones[13]==1))))
			continue;
		/* merge: stones[11] = female(478, 301, 478) */
		reached[0][301] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[11];
		now.stones[11] = 1;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: stones[13] = none(478, 302, 478) */
		reached[0][302] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[13];
		now.stones[13] = 3;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: .(goto)(0, 306, 478) */
		reached[0][306] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 127: // STATE 307 - pa_2_frogs_N_9.pml:120 - [((stones[12]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][307] = 1;
		if (!((now.stones[12]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 308 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',11,12)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][308] = 1;
		Printf("Male Frog jumps from %d to %d\n", 11, 12);
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 309 - pa_2_frogs_N_9.pml:33 - [(((stones[12]==none)&&(stones[11]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][309] = 1;
		if (!(((now.stones[12]==3)&&(now.stones[11]==2))))
			continue;
		/* merge: stones[12] = male(478, 310, 478) */
		reached[0][310] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[12];
		now.stones[12] = 2;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: stones[11] = none(478, 311, 478) */
		reached[0][311] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[11];
		now.stones[11] = 3;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: .(goto)(0, 333, 478) */
		reached[0][333] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 130: // STATE 314 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',10,12)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][314] = 1;
		Printf("Male Frog jumps from %d to %d\n", 10, 12);
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 315 - pa_2_frogs_N_9.pml:33 - [(((stones[12]==none)&&(stones[10]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][315] = 1;
		if (!(((now.stones[12]==3)&&(now.stones[10]==2))))
			continue;
		/* merge: stones[12] = male(478, 316, 478) */
		reached[0][316] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[12];
		now.stones[12] = 2;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: stones[10] = none(478, 317, 478) */
		reached[0][317] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[10];
		now.stones[10] = 3;
#ifdef VAR_RANGES
		logval("stones[10]", now.stones[10]);
#endif
		;
		/* merge: .(goto)(0, 333, 478) */
		reached[0][333] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 132: // STATE 320 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',13,12)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][320] = 1;
		Printf("Female Frog jumps from %d to %d\n", 13, 12);
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 321 - pa_2_frogs_N_9.pml:40 - [(((stones[12]==none)&&(stones[13]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][321] = 1;
		if (!(((now.stones[12]==3)&&(now.stones[13]==1))))
			continue;
		/* merge: stones[12] = female(478, 322, 478) */
		reached[0][322] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[12];
		now.stones[12] = 1;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: stones[13] = none(478, 323, 478) */
		reached[0][323] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[13];
		now.stones[13] = 3;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: .(goto)(0, 333, 478) */
		reached[0][333] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 134: // STATE 326 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',14,12)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][326] = 1;
		Printf("Female Frog jumps from %d to %d\n", 14, 12);
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 327 - pa_2_frogs_N_9.pml:40 - [(((stones[12]==none)&&(stones[14]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][327] = 1;
		if (!(((now.stones[12]==3)&&(now.stones[14]==1))))
			continue;
		/* merge: stones[12] = female(478, 328, 478) */
		reached[0][328] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[12];
		now.stones[12] = 1;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: stones[14] = none(478, 329, 478) */
		reached[0][329] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[14];
		now.stones[14] = 3;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: .(goto)(0, 333, 478) */
		reached[0][333] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 136: // STATE 334 - pa_2_frogs_N_9.pml:126 - [((stones[13]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][334] = 1;
		if (!((now.stones[13]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 335 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',12,13)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][335] = 1;
		Printf("Male Frog jumps from %d to %d\n", 12, 13);
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 336 - pa_2_frogs_N_9.pml:33 - [(((stones[13]==none)&&(stones[12]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][336] = 1;
		if (!(((now.stones[13]==3)&&(now.stones[12]==2))))
			continue;
		/* merge: stones[13] = male(478, 337, 478) */
		reached[0][337] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[13];
		now.stones[13] = 2;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: stones[12] = none(478, 338, 478) */
		reached[0][338] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[12];
		now.stones[12] = 3;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: .(goto)(0, 360, 478) */
		reached[0][360] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 139: // STATE 341 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',11,13)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][341] = 1;
		Printf("Male Frog jumps from %d to %d\n", 11, 13);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 342 - pa_2_frogs_N_9.pml:33 - [(((stones[13]==none)&&(stones[11]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][342] = 1;
		if (!(((now.stones[13]==3)&&(now.stones[11]==2))))
			continue;
		/* merge: stones[13] = male(478, 343, 478) */
		reached[0][343] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[13];
		now.stones[13] = 2;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: stones[11] = none(478, 344, 478) */
		reached[0][344] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[11];
		now.stones[11] = 3;
#ifdef VAR_RANGES
		logval("stones[11]", now.stones[11]);
#endif
		;
		/* merge: .(goto)(0, 360, 478) */
		reached[0][360] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 141: // STATE 347 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',14,13)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][347] = 1;
		Printf("Female Frog jumps from %d to %d\n", 14, 13);
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 348 - pa_2_frogs_N_9.pml:40 - [(((stones[13]==none)&&(stones[14]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][348] = 1;
		if (!(((now.stones[13]==3)&&(now.stones[14]==1))))
			continue;
		/* merge: stones[13] = female(478, 349, 478) */
		reached[0][349] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[13];
		now.stones[13] = 1;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: stones[14] = none(478, 350, 478) */
		reached[0][350] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[14];
		now.stones[14] = 3;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: .(goto)(0, 360, 478) */
		reached[0][360] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 143: // STATE 353 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',15,13)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][353] = 1;
		Printf("Female Frog jumps from %d to %d\n", 15, 13);
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 354 - pa_2_frogs_N_9.pml:40 - [(((stones[13]==none)&&(stones[15]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][354] = 1;
		if (!(((now.stones[13]==3)&&(now.stones[15]==1))))
			continue;
		/* merge: stones[13] = female(478, 355, 478) */
		reached[0][355] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[13];
		now.stones[13] = 1;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: stones[15] = none(478, 356, 478) */
		reached[0][356] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[15];
		now.stones[15] = 3;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: .(goto)(0, 360, 478) */
		reached[0][360] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 145: // STATE 361 - pa_2_frogs_N_9.pml:133 - [((stones[14]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][361] = 1;
		if (!((now.stones[14]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 362 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',13,14)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][362] = 1;
		Printf("Male Frog jumps from %d to %d\n", 13, 14);
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 363 - pa_2_frogs_N_9.pml:33 - [(((stones[14]==none)&&(stones[13]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][363] = 1;
		if (!(((now.stones[14]==3)&&(now.stones[13]==2))))
			continue;
		/* merge: stones[14] = male(478, 364, 478) */
		reached[0][364] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[14];
		now.stones[14] = 2;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: stones[13] = none(478, 365, 478) */
		reached[0][365] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[13];
		now.stones[13] = 3;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: .(goto)(0, 387, 478) */
		reached[0][387] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 148: // STATE 368 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',12,14)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][368] = 1;
		Printf("Male Frog jumps from %d to %d\n", 12, 14);
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 369 - pa_2_frogs_N_9.pml:33 - [(((stones[14]==none)&&(stones[12]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][369] = 1;
		if (!(((now.stones[14]==3)&&(now.stones[12]==2))))
			continue;
		/* merge: stones[14] = male(478, 370, 478) */
		reached[0][370] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[14];
		now.stones[14] = 2;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: stones[12] = none(478, 371, 478) */
		reached[0][371] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[12];
		now.stones[12] = 3;
#ifdef VAR_RANGES
		logval("stones[12]", now.stones[12]);
#endif
		;
		/* merge: .(goto)(0, 387, 478) */
		reached[0][387] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 150: // STATE 374 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',15,14)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][374] = 1;
		Printf("Female Frog jumps from %d to %d\n", 15, 14);
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 375 - pa_2_frogs_N_9.pml:40 - [(((stones[14]==none)&&(stones[15]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][375] = 1;
		if (!(((now.stones[14]==3)&&(now.stones[15]==1))))
			continue;
		/* merge: stones[14] = female(478, 376, 478) */
		reached[0][376] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[14];
		now.stones[14] = 1;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: stones[15] = none(478, 377, 478) */
		reached[0][377] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[15];
		now.stones[15] = 3;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: .(goto)(0, 387, 478) */
		reached[0][387] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 152: // STATE 380 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',16,14)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][380] = 1;
		Printf("Female Frog jumps from %d to %d\n", 16, 14);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 381 - pa_2_frogs_N_9.pml:40 - [(((stones[14]==none)&&(stones[16]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][381] = 1;
		if (!(((now.stones[14]==3)&&(now.stones[16]==1))))
			continue;
		/* merge: stones[14] = female(478, 382, 478) */
		reached[0][382] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[14];
		now.stones[14] = 1;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: stones[16] = none(478, 383, 478) */
		reached[0][383] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[16];
		now.stones[16] = 3;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: .(goto)(0, 387, 478) */
		reached[0][387] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 154: // STATE 388 - pa_2_frogs_N_9.pml:139 - [((stones[15]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][388] = 1;
		if (!((now.stones[15]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 389 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',14,15)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][389] = 1;
		Printf("Male Frog jumps from %d to %d\n", 14, 15);
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 390 - pa_2_frogs_N_9.pml:33 - [(((stones[15]==none)&&(stones[14]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][390] = 1;
		if (!(((now.stones[15]==3)&&(now.stones[14]==2))))
			continue;
		/* merge: stones[15] = male(478, 391, 478) */
		reached[0][391] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[15];
		now.stones[15] = 2;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: stones[14] = none(478, 392, 478) */
		reached[0][392] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[14];
		now.stones[14] = 3;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: .(goto)(0, 414, 478) */
		reached[0][414] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 157: // STATE 395 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',13,15)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][395] = 1;
		Printf("Male Frog jumps from %d to %d\n", 13, 15);
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 396 - pa_2_frogs_N_9.pml:33 - [(((stones[15]==none)&&(stones[13]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][396] = 1;
		if (!(((now.stones[15]==3)&&(now.stones[13]==2))))
			continue;
		/* merge: stones[15] = male(478, 397, 478) */
		reached[0][397] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[15];
		now.stones[15] = 2;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: stones[13] = none(478, 398, 478) */
		reached[0][398] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[13];
		now.stones[13] = 3;
#ifdef VAR_RANGES
		logval("stones[13]", now.stones[13]);
#endif
		;
		/* merge: .(goto)(0, 414, 478) */
		reached[0][414] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 159: // STATE 401 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',16,15)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][401] = 1;
		Printf("Female Frog jumps from %d to %d\n", 16, 15);
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 402 - pa_2_frogs_N_9.pml:40 - [(((stones[15]==none)&&(stones[16]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][402] = 1;
		if (!(((now.stones[15]==3)&&(now.stones[16]==1))))
			continue;
		/* merge: stones[15] = female(478, 403, 478) */
		reached[0][403] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[15];
		now.stones[15] = 1;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: stones[16] = none(478, 404, 478) */
		reached[0][404] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[16];
		now.stones[16] = 3;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: .(goto)(0, 414, 478) */
		reached[0][414] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 161: // STATE 407 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',17,15)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][407] = 1;
		Printf("Female Frog jumps from %d to %d\n", 17, 15);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 408 - pa_2_frogs_N_9.pml:40 - [(((stones[15]==none)&&(stones[17]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][408] = 1;
		if (!(((now.stones[15]==3)&&(now.stones[17]==1))))
			continue;
		/* merge: stones[15] = female(478, 409, 478) */
		reached[0][409] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[15];
		now.stones[15] = 1;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: stones[17] = none(478, 410, 478) */
		reached[0][410] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[17];
		now.stones[17] = 3;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: .(goto)(0, 414, 478) */
		reached[0][414] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 163: // STATE 415 - pa_2_frogs_N_9.pml:145 - [((stones[16]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][415] = 1;
		if (!((now.stones[16]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 416 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',15,16)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][416] = 1;
		Printf("Male Frog jumps from %d to %d\n", 15, 16);
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 417 - pa_2_frogs_N_9.pml:33 - [(((stones[16]==none)&&(stones[15]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][417] = 1;
		if (!(((now.stones[16]==3)&&(now.stones[15]==2))))
			continue;
		/* merge: stones[16] = male(478, 418, 478) */
		reached[0][418] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[16];
		now.stones[16] = 2;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: stones[15] = none(478, 419, 478) */
		reached[0][419] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[15];
		now.stones[15] = 3;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: .(goto)(0, 441, 478) */
		reached[0][441] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 166: // STATE 422 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',14,16)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		Printf("Male Frog jumps from %d to %d\n", 14, 16);
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 423 - pa_2_frogs_N_9.pml:33 - [(((stones[16]==none)&&(stones[14]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		if (!(((now.stones[16]==3)&&(now.stones[14]==2))))
			continue;
		/* merge: stones[16] = male(478, 424, 478) */
		reached[0][424] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[16];
		now.stones[16] = 2;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: stones[14] = none(478, 425, 478) */
		reached[0][425] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[14];
		now.stones[14] = 3;
#ifdef VAR_RANGES
		logval("stones[14]", now.stones[14]);
#endif
		;
		/* merge: .(goto)(0, 441, 478) */
		reached[0][441] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 168: // STATE 428 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',17,16)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][428] = 1;
		Printf("Female Frog jumps from %d to %d\n", 17, 16);
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 429 - pa_2_frogs_N_9.pml:40 - [(((stones[16]==none)&&(stones[17]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][429] = 1;
		if (!(((now.stones[16]==3)&&(now.stones[17]==1))))
			continue;
		/* merge: stones[16] = female(478, 430, 478) */
		reached[0][430] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[16];
		now.stones[16] = 1;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: stones[17] = none(478, 431, 478) */
		reached[0][431] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[17];
		now.stones[17] = 3;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: .(goto)(0, 441, 478) */
		reached[0][441] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 170: // STATE 434 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',18,16)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][434] = 1;
		Printf("Female Frog jumps from %d to %d\n", 18, 16);
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 435 - pa_2_frogs_N_9.pml:40 - [(((stones[16]==none)&&(stones[18]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!(((now.stones[16]==3)&&(now.stones[18]==1))))
			continue;
		/* merge: stones[16] = female(478, 436, 478) */
		reached[0][436] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[16];
		now.stones[16] = 1;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: stones[18] = none(478, 437, 478) */
		reached[0][437] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[18];
		now.stones[18] = 3;
#ifdef VAR_RANGES
		logval("stones[18]", now.stones[18]);
#endif
		;
		/* merge: .(goto)(0, 441, 478) */
		reached[0][441] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 172: // STATE 442 - pa_2_frogs_N_9.pml:152 - [((stones[17]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][442] = 1;
		if (!((now.stones[17]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 443 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',16,17)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][443] = 1;
		Printf("Male Frog jumps from %d to %d\n", 16, 17);
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 444 - pa_2_frogs_N_9.pml:33 - [(((stones[17]==none)&&(stones[16]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][444] = 1;
		if (!(((now.stones[17]==3)&&(now.stones[16]==2))))
			continue;
		/* merge: stones[17] = male(478, 445, 478) */
		reached[0][445] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[17];
		now.stones[17] = 2;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: stones[16] = none(478, 446, 478) */
		reached[0][446] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[16];
		now.stones[16] = 3;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: .(goto)(0, 462, 478) */
		reached[0][462] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 175: // STATE 449 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',15,17)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][449] = 1;
		Printf("Male Frog jumps from %d to %d\n", 15, 17);
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 450 - pa_2_frogs_N_9.pml:33 - [(((stones[17]==none)&&(stones[15]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][450] = 1;
		if (!(((now.stones[17]==3)&&(now.stones[15]==2))))
			continue;
		/* merge: stones[17] = male(478, 451, 478) */
		reached[0][451] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[17];
		now.stones[17] = 2;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: stones[15] = none(478, 452, 478) */
		reached[0][452] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[15];
		now.stones[15] = 3;
#ifdef VAR_RANGES
		logval("stones[15]", now.stones[15]);
#endif
		;
		/* merge: .(goto)(0, 462, 478) */
		reached[0][462] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 177: // STATE 455 - pa_2_frogs_N_9.pml:39 - [printf('Female Frog jumps from %d to %d\\n',18,17)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][455] = 1;
		Printf("Female Frog jumps from %d to %d\n", 18, 17);
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 456 - pa_2_frogs_N_9.pml:40 - [(((stones[17]==none)&&(stones[18]==female)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][456] = 1;
		if (!(((now.stones[17]==3)&&(now.stones[18]==1))))
			continue;
		/* merge: stones[17] = female(478, 457, 478) */
		reached[0][457] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[17];
		now.stones[17] = 1;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: stones[18] = none(478, 458, 478) */
		reached[0][458] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[18];
		now.stones[18] = 3;
#ifdef VAR_RANGES
		logval("stones[18]", now.stones[18]);
#endif
		;
		/* merge: .(goto)(0, 462, 478) */
		reached[0][462] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 179: // STATE 463 - pa_2_frogs_N_9.pml:157 - [((stones[18]==none))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][463] = 1;
		if (!((now.stones[18]==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 464 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',17,18)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][464] = 1;
		Printf("Male Frog jumps from %d to %d\n", 17, 18);
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 465 - pa_2_frogs_N_9.pml:33 - [(((stones[18]==none)&&(stones[17]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][465] = 1;
		if (!(((now.stones[18]==3)&&(now.stones[17]==2))))
			continue;
		/* merge: stones[18] = male(478, 466, 478) */
		reached[0][466] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[18];
		now.stones[18] = 2;
#ifdef VAR_RANGES
		logval("stones[18]", now.stones[18]);
#endif
		;
		/* merge: stones[17] = none(478, 467, 478) */
		reached[0][467] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[17];
		now.stones[17] = 3;
#ifdef VAR_RANGES
		logval("stones[17]", now.stones[17]);
#endif
		;
		/* merge: .(goto)(0, 477, 478) */
		reached[0][477] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 182: // STATE 470 - pa_2_frogs_N_9.pml:32 - [printf('Male Frog jumps from %d to %d\\n',16,18)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][470] = 1;
		Printf("Male Frog jumps from %d to %d\n", 16, 18);
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 471 - pa_2_frogs_N_9.pml:33 - [(((stones[18]==none)&&(stones[16]==male)))] (478:0:2 - 1)
		IfNotBlocked
		reached[0][471] = 1;
		if (!(((now.stones[18]==3)&&(now.stones[16]==2))))
			continue;
		/* merge: stones[18] = male(478, 472, 478) */
		reached[0][472] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.stones[18];
		now.stones[18] = 2;
#ifdef VAR_RANGES
		logval("stones[18]", now.stones[18]);
#endif
		;
		/* merge: stones[16] = none(478, 473, 478) */
		reached[0][473] = 1;
		(trpt+1)->bup.ovals[1] = now.stones[16];
		now.stones[16] = 3;
#ifdef VAR_RANGES
		logval("stones[16]", now.stones[16]);
#endif
		;
		/* merge: .(goto)(0, 477, 478) */
		reached[0][477] = 1;
		;
		/* merge: .(goto)(0, 479, 478) */
		reached[0][479] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 184: // STATE 481 - pa_2_frogs_N_9.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][481] = 1;
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

