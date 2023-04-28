#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(4*sizeof(Trans **));

	/* proctype 2: ltl_0 */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(507,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(506,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(506,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(506,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(503,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(503,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(501,0,6,3,3,"(!(!(((((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[8]==female))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male))&&(stones[17]==male))&&(stones[18]==male)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!(!(!(((((((((((((((((((stones[0]==female)&&(stones[1]==female))&&(stones[2]==female))&&(stones[3]==female))&&(stones[4]==female))&&(stones[5]==female))&&(stones[6]==female))&&(stones[7]==female))&&(stones[8]==female))&&(stones[10]==male))&&(stones[11]==male))&&(stones[12]==male))&&(stones[13]==male))&&(stones[14]==male))&&(stones[15]==male))&&(stones[16]==male))&&(stones[17]==male))&&(stones[18]==male))))))",0,0,0);
	trans[2][4]	= settr(504,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(505,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(508,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(509,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(510,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 1: :init: */

	trans[1] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[1][1]	= settr(481,0,2,5,5,"stones[0] = male", 1, 2, 0);
	trans[1][2]	= settr(482,0,3,6,6,"stones[1] = male", 1, 2, 0);
	trans[1][3]	= settr(483,0,4,7,7,"stones[2] = male", 1, 2, 0);
	trans[1][4]	= settr(484,0,5,8,8,"stones[3] = male", 1, 2, 0);
	trans[1][5]	= settr(485,0,6,9,9,"stones[4] = male", 1, 2, 0);
	trans[1][6]	= settr(486,0,7,10,10,"stones[5] = male", 1, 2, 0);
	trans[1][7]	= settr(487,0,8,11,11,"stones[6] = male", 1, 2, 0);
	trans[1][8]	= settr(488,0,9,12,12,"stones[7] = male", 1, 2, 0);
	trans[1][9]	= settr(489,0,10,13,13,"stones[8] = male", 1, 2, 0);
	trans[1][10]	= settr(490,0,11,14,14,"stones[9] = none", 1, 2, 0);
	trans[1][11]	= settr(491,0,12,15,15,"stones[10] = female", 1, 2, 0);
	trans[1][12]	= settr(492,0,13,16,16,"stones[11] = female", 1, 2, 0);
	trans[1][13]	= settr(493,0,14,17,17,"stones[12] = female", 1, 2, 0);
	trans[1][14]	= settr(494,0,15,18,18,"stones[13] = female", 1, 2, 0);
	trans[1][15]	= settr(495,0,16,19,19,"stones[14] = female", 1, 2, 0);
	trans[1][16]	= settr(496,0,17,20,20,"stones[15] = female", 1, 2, 0);
	trans[1][17]	= settr(497,0,18,21,21,"stones[16] = female", 1, 2, 0);
	trans[1][18]	= settr(498,0,19,22,22,"stones[17] = female", 1, 2, 0);
	trans[1][19]	= settr(499,0,20,23,23,"stones[18] = female", 1, 2, 0);
	trans[1][20]	= settr(500,0,0,24,24,"-end-", 0, 3500, 0);

	/* proctype 0: main_process */

	trans[0] = (Trans **) emalloc(482*sizeof(Trans *));

	trans[0][479]	= settr(478,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[0][478] = settr(477,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,16,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,64,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,91,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,118,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,145,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,172,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,199,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,226,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,253,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,280,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,307,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,334,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,361,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,388,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,415,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(477,0,442,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(477,0,463,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,14,25,0,"((stones[0]==none))", 1, 2, 0);
	T = trans[0][14] = settr(13,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(13,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(13,0,13,0,0,"IF", 0, 2, 0);
	T = trans[ 0][7] = settr(6,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(6,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,2,3,26,0,"printf('Female Frog jumps from %d to %d\\n',1,0)", 1, 2, 0);
	trans[0][3]	= settr(2,0,478,27,27,"(((stones[0]==none)&&(stones[1]==female)))", 1, 2, 0); /* m: 4 -> 478,0 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"stones[0] = female",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"stones[1] = none",0,0,0);
	trans[0][15]	= settr(14,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][13] = settr(12,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(12,0,12,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][12] = settr(11,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(11,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,2,9,28,0,"printf('Female Frog jumps from %d to %d\\n',2,0)", 1, 2, 0);
	trans[0][9]	= settr(8,0,478,29,29,"(((stones[0]==none)&&(stones[2]==female)))", 1, 2, 0); /* m: 10 -> 478,0 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"stones[0] = female",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"stones[2] = none",0,0,0);
	trans[0][16]	= settr(15,0,35,30,0,"((stones[1]==none))", 1, 2, 0);
	T = trans[0][35] = settr(34,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(34,0,22,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(34,0,28,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(34,0,34,0,0,"IF", 0, 2, 0);
	T = trans[ 0][22] = settr(21,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(21,0,21,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][21] = settr(20,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(20,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[0][17]	= settr(16,2,18,31,0,"printf('Male Frog jumps from %d to %d\\n',0,1)", 1, 2, 0);
	trans[0][18]	= settr(17,0,478,32,32,"(((stones[1]==none)&&(stones[0]==male)))", 1, 2, 0); /* m: 19 -> 478,0 */
	reached0[19] = 1;
	trans[0][19]	= settr(0,0,0,0,0,"stones[1] = male",0,0,0);
	trans[0][20]	= settr(0,0,0,0,0,"stones[0] = none",0,0,0);
	trans[0][36]	= settr(35,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][28] = settr(27,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(27,0,27,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][27] = settr(26,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(26,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[0][23]	= settr(22,2,24,33,0,"printf('Female Frog jumps from %d to %d\\n',2,1)", 1, 2, 0);
	trans[0][24]	= settr(23,0,478,34,34,"(((stones[1]==none)&&(stones[2]==female)))", 1, 2, 0); /* m: 25 -> 478,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"stones[1] = female",0,0,0);
	trans[0][26]	= settr(0,0,0,0,0,"stones[2] = none",0,0,0);
	T = trans[ 0][34] = settr(33,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(33,0,33,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][33] = settr(32,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(32,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[0][29]	= settr(28,2,30,35,0,"printf('Female Frog jumps from %d to %d\\n',3,1)", 1, 2, 0);
	trans[0][30]	= settr(29,0,478,36,36,"(((stones[1]==none)&&(stones[3]==female)))", 1, 2, 0); /* m: 31 -> 478,0 */
	reached0[31] = 1;
	trans[0][31]	= settr(0,0,0,0,0,"stones[1] = female",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"stones[3] = none",0,0,0);
	trans[0][37]	= settr(36,0,62,37,0,"((stones[2]==none))", 1, 2, 0);
	T = trans[0][62] = settr(61,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(61,0,43,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(61,0,49,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(61,0,55,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(61,0,61,0,0,"IF", 0, 2, 0);
	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(42,0,42,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][42] = settr(41,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(41,2,38,0,0,"ATOMIC", 1, 2, 0);
	trans[0][38]	= settr(37,2,39,38,0,"printf('Male Frog jumps from %d to %d\\n',0,2)", 1, 2, 0);
	trans[0][39]	= settr(38,0,478,39,39,"(((stones[2]==none)&&(stones[0]==male)))", 1, 2, 0); /* m: 40 -> 478,0 */
	reached0[40] = 1;
	trans[0][40]	= settr(0,0,0,0,0,"stones[2] = male",0,0,0);
	trans[0][41]	= settr(0,0,0,0,0,"stones[0] = none",0,0,0);
	trans[0][63]	= settr(62,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][49] = settr(48,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(48,0,48,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][48] = settr(47,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(47,2,44,0,0,"ATOMIC", 1, 2, 0);
	trans[0][44]	= settr(43,2,45,40,0,"printf('Male Frog jumps from %d to %d\\n',1,2)", 1, 2, 0);
	trans[0][45]	= settr(44,0,478,41,41,"(((stones[2]==none)&&(stones[1]==male)))", 1, 2, 0); /* m: 46 -> 478,0 */
	reached0[46] = 1;
	trans[0][46]	= settr(0,0,0,0,0,"stones[2] = male",0,0,0);
	trans[0][47]	= settr(0,0,0,0,0,"stones[1] = none",0,0,0);
	T = trans[ 0][55] = settr(54,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(54,0,54,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][54] = settr(53,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(53,2,50,0,0,"ATOMIC", 1, 2, 0);
	trans[0][50]	= settr(49,2,51,42,0,"printf('Female Frog jumps from %d to %d\\n',3,2)", 1, 2, 0);
	trans[0][51]	= settr(50,0,478,43,43,"(((stones[2]==none)&&(stones[3]==female)))", 1, 2, 0); /* m: 52 -> 478,0 */
	reached0[52] = 1;
	trans[0][52]	= settr(0,0,0,0,0,"stones[2] = female",0,0,0);
	trans[0][53]	= settr(0,0,0,0,0,"stones[3] = none",0,0,0);
	T = trans[ 0][61] = settr(60,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(60,0,60,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][60] = settr(59,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(59,2,56,0,0,"ATOMIC", 1, 2, 0);
	trans[0][56]	= settr(55,2,57,44,0,"printf('Female Frog jumps from %d to %d\\n',4,2)", 1, 2, 0);
	trans[0][57]	= settr(56,0,478,45,45,"(((stones[2]==none)&&(stones[4]==female)))", 1, 2, 0); /* m: 58 -> 478,0 */
	reached0[58] = 1;
	trans[0][58]	= settr(0,0,0,0,0,"stones[2] = female",0,0,0);
	trans[0][59]	= settr(0,0,0,0,0,"stones[4] = none",0,0,0);
	trans[0][64]	= settr(63,0,89,46,0,"((stones[3]==none))", 1, 2, 0);
	T = trans[0][89] = settr(88,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(88,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(88,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(88,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(88,0,88,0,0,"IF", 0, 2, 0);
	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(69,0,69,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][69] = settr(68,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(68,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[0][65]	= settr(64,2,66,47,0,"printf('Male Frog jumps from %d to %d\\n',1,3)", 1, 2, 0);
	trans[0][66]	= settr(65,0,478,48,48,"(((stones[3]==none)&&(stones[1]==male)))", 1, 2, 0); /* m: 67 -> 478,0 */
	reached0[67] = 1;
	trans[0][67]	= settr(0,0,0,0,0,"stones[3] = male",0,0,0);
	trans[0][68]	= settr(0,0,0,0,0,"stones[1] = none",0,0,0);
	trans[0][90]	= settr(89,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][76] = settr(75,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(75,0,75,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][75] = settr(74,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(74,2,71,0,0,"ATOMIC", 1, 2, 0);
	trans[0][71]	= settr(70,2,72,49,0,"printf('Male Frog jumps from %d to %d\\n',2,3)", 1, 2, 0);
	trans[0][72]	= settr(71,0,478,50,50,"(((stones[3]==none)&&(stones[2]==male)))", 1, 2, 0); /* m: 73 -> 478,0 */
	reached0[73] = 1;
	trans[0][73]	= settr(0,0,0,0,0,"stones[3] = male",0,0,0);
	trans[0][74]	= settr(0,0,0,0,0,"stones[2] = none",0,0,0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][81] = settr(80,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(80,2,77,0,0,"ATOMIC", 1, 2, 0);
	trans[0][77]	= settr(76,2,78,51,0,"printf('Female Frog jumps from %d to %d\\n',4,3)", 1, 2, 0);
	trans[0][78]	= settr(77,0,478,52,52,"(((stones[3]==none)&&(stones[4]==female)))", 1, 2, 0); /* m: 79 -> 478,0 */
	reached0[79] = 1;
	trans[0][79]	= settr(0,0,0,0,0,"stones[3] = female",0,0,0);
	trans[0][80]	= settr(0,0,0,0,0,"stones[4] = none",0,0,0);
	T = trans[ 0][88] = settr(87,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(87,0,87,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][87] = settr(86,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(86,2,83,0,0,"ATOMIC", 1, 2, 0);
	trans[0][83]	= settr(82,2,84,53,0,"printf('Female Frog jumps from %d to %d\\n',5,3)", 1, 2, 0);
	trans[0][84]	= settr(83,0,478,54,54,"(((stones[3]==none)&&(stones[5]==female)))", 1, 2, 0); /* m: 85 -> 478,0 */
	reached0[85] = 1;
	trans[0][85]	= settr(0,0,0,0,0,"stones[3] = female",0,0,0);
	trans[0][86]	= settr(0,0,0,0,0,"stones[5] = none",0,0,0);
	trans[0][91]	= settr(90,0,116,55,0,"((stones[4]==none))", 1, 2, 0);
	T = trans[0][116] = settr(115,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(115,0,97,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(115,0,103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(115,0,109,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(115,0,115,0,0,"IF", 0, 2, 0);
	T = trans[ 0][97] = settr(96,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(96,0,96,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][96] = settr(95,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(95,2,92,0,0,"ATOMIC", 1, 2, 0);
	trans[0][92]	= settr(91,2,93,56,0,"printf('Male Frog jumps from %d to %d\\n',3,4)", 1, 2, 0);
	trans[0][93]	= settr(92,0,478,57,57,"(((stones[4]==none)&&(stones[3]==male)))", 1, 2, 0); /* m: 94 -> 478,0 */
	reached0[94] = 1;
	trans[0][94]	= settr(0,0,0,0,0,"stones[4] = male",0,0,0);
	trans[0][95]	= settr(0,0,0,0,0,"stones[3] = none",0,0,0);
	trans[0][117]	= settr(116,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(102,0,102,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][102] = settr(101,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(101,2,98,0,0,"ATOMIC", 1, 2, 0);
	trans[0][98]	= settr(97,2,99,58,0,"printf('Male Frog jumps from %d to %d\\n',2,4)", 1, 2, 0);
	trans[0][99]	= settr(98,0,478,59,59,"(((stones[4]==none)&&(stones[2]==male)))", 1, 2, 0); /* m: 100 -> 478,0 */
	reached0[100] = 1;
	trans[0][100]	= settr(0,0,0,0,0,"stones[4] = male",0,0,0);
	trans[0][101]	= settr(0,0,0,0,0,"stones[2] = none",0,0,0);
	T = trans[ 0][109] = settr(108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(108,0,108,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][108] = settr(107,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(107,2,104,0,0,"ATOMIC", 1, 2, 0);
	trans[0][104]	= settr(103,2,105,60,0,"printf('Female Frog jumps from %d to %d\\n',5,4)", 1, 2, 0);
	trans[0][105]	= settr(104,0,478,61,61,"(((stones[4]==none)&&(stones[5]==female)))", 1, 2, 0); /* m: 106 -> 478,0 */
	reached0[106] = 1;
	trans[0][106]	= settr(0,0,0,0,0,"stones[4] = female",0,0,0);
	trans[0][107]	= settr(0,0,0,0,0,"stones[5] = none",0,0,0);
	T = trans[ 0][115] = settr(114,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(114,0,114,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][114] = settr(113,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(113,2,110,0,0,"ATOMIC", 1, 2, 0);
	trans[0][110]	= settr(109,2,111,62,0,"printf('Female Frog jumps from %d to %d\\n',6,4)", 1, 2, 0);
	trans[0][111]	= settr(110,0,478,63,63,"(((stones[4]==none)&&(stones[6]==female)))", 1, 2, 0); /* m: 112 -> 478,0 */
	reached0[112] = 1;
	trans[0][112]	= settr(0,0,0,0,0,"stones[4] = female",0,0,0);
	trans[0][113]	= settr(0,0,0,0,0,"stones[6] = none",0,0,0);
	trans[0][118]	= settr(117,0,143,64,0,"((stones[5]==none))", 1, 2, 0);
	T = trans[0][143] = settr(142,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(142,0,124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(142,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(142,0,136,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(142,0,142,0,0,"IF", 0, 2, 0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(123,0,123,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][123] = settr(122,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(122,2,119,0,0,"ATOMIC", 1, 2, 0);
	trans[0][119]	= settr(118,2,120,65,0,"printf('Male Frog jumps from %d to %d\\n',4,5)", 1, 2, 0);
	trans[0][120]	= settr(119,0,478,66,66,"(((stones[5]==none)&&(stones[4]==male)))", 1, 2, 0); /* m: 121 -> 478,0 */
	reached0[121] = 1;
	trans[0][121]	= settr(0,0,0,0,0,"stones[5] = male",0,0,0);
	trans[0][122]	= settr(0,0,0,0,0,"stones[4] = none",0,0,0);
	trans[0][144]	= settr(143,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][130] = settr(129,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(129,0,129,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][129] = settr(128,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(128,2,125,0,0,"ATOMIC", 1, 2, 0);
	trans[0][125]	= settr(124,2,126,67,0,"printf('Male Frog jumps from %d to %d\\n',3,5)", 1, 2, 0);
	trans[0][126]	= settr(125,0,478,68,68,"(((stones[5]==none)&&(stones[3]==male)))", 1, 2, 0); /* m: 127 -> 478,0 */
	reached0[127] = 1;
	trans[0][127]	= settr(0,0,0,0,0,"stones[5] = male",0,0,0);
	trans[0][128]	= settr(0,0,0,0,0,"stones[3] = none",0,0,0);
	T = trans[ 0][136] = settr(135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(135,0,135,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][135] = settr(134,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(134,2,131,0,0,"ATOMIC", 1, 2, 0);
	trans[0][131]	= settr(130,2,132,69,0,"printf('Female Frog jumps from %d to %d\\n',6,5)", 1, 2, 0);
	trans[0][132]	= settr(131,0,478,70,70,"(((stones[5]==none)&&(stones[6]==female)))", 1, 2, 0); /* m: 133 -> 478,0 */
	reached0[133] = 1;
	trans[0][133]	= settr(0,0,0,0,0,"stones[5] = female",0,0,0);
	trans[0][134]	= settr(0,0,0,0,0,"stones[6] = none",0,0,0);
	T = trans[ 0][142] = settr(141,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(141,0,141,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][141] = settr(140,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(140,2,137,0,0,"ATOMIC", 1, 2, 0);
	trans[0][137]	= settr(136,2,138,71,0,"printf('Female Frog jumps from %d to %d\\n',7,5)", 1, 2, 0);
	trans[0][138]	= settr(137,0,478,72,72,"(((stones[5]==none)&&(stones[7]==female)))", 1, 2, 0); /* m: 139 -> 478,0 */
	reached0[139] = 1;
	trans[0][139]	= settr(0,0,0,0,0,"stones[5] = female",0,0,0);
	trans[0][140]	= settr(0,0,0,0,0,"stones[7] = none",0,0,0);
	trans[0][145]	= settr(144,0,170,73,0,"((stones[6]==none))", 1, 2, 0);
	T = trans[0][170] = settr(169,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(169,0,151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(169,0,157,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(169,0,163,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(169,0,169,0,0,"IF", 0, 2, 0);
	T = trans[ 0][151] = settr(150,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(150,0,150,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][150] = settr(149,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(149,2,146,0,0,"ATOMIC", 1, 2, 0);
	trans[0][146]	= settr(145,2,147,74,0,"printf('Male Frog jumps from %d to %d\\n',5,6)", 1, 2, 0);
	trans[0][147]	= settr(146,0,478,75,75,"(((stones[6]==none)&&(stones[5]==male)))", 1, 2, 0); /* m: 148 -> 478,0 */
	reached0[148] = 1;
	trans[0][148]	= settr(0,0,0,0,0,"stones[6] = male",0,0,0);
	trans[0][149]	= settr(0,0,0,0,0,"stones[5] = none",0,0,0);
	trans[0][171]	= settr(170,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][157] = settr(156,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(156,0,156,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][156] = settr(155,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(155,2,152,0,0,"ATOMIC", 1, 2, 0);
	trans[0][152]	= settr(151,2,153,76,0,"printf('Male Frog jumps from %d to %d\\n',4,6)", 1, 2, 0);
	trans[0][153]	= settr(152,0,478,77,77,"(((stones[6]==none)&&(stones[4]==male)))", 1, 2, 0); /* m: 154 -> 478,0 */
	reached0[154] = 1;
	trans[0][154]	= settr(0,0,0,0,0,"stones[6] = male",0,0,0);
	trans[0][155]	= settr(0,0,0,0,0,"stones[4] = none",0,0,0);
	T = trans[ 0][163] = settr(162,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(162,0,162,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][162] = settr(161,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(161,2,158,0,0,"ATOMIC", 1, 2, 0);
	trans[0][158]	= settr(157,2,159,78,0,"printf('Female Frog jumps from %d to %d\\n',7,6)", 1, 2, 0);
	trans[0][159]	= settr(158,0,478,79,79,"(((stones[6]==none)&&(stones[7]==female)))", 1, 2, 0); /* m: 160 -> 478,0 */
	reached0[160] = 1;
	trans[0][160]	= settr(0,0,0,0,0,"stones[6] = female",0,0,0);
	trans[0][161]	= settr(0,0,0,0,0,"stones[7] = none",0,0,0);
	T = trans[ 0][169] = settr(168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(168,0,168,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][168] = settr(167,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(167,2,164,0,0,"ATOMIC", 1, 2, 0);
	trans[0][164]	= settr(163,2,165,80,0,"printf('Female Frog jumps from %d to %d\\n',8,6)", 1, 2, 0);
	trans[0][165]	= settr(164,0,478,81,81,"(((stones[6]==none)&&(stones[8]==female)))", 1, 2, 0); /* m: 166 -> 478,0 */
	reached0[166] = 1;
	trans[0][166]	= settr(0,0,0,0,0,"stones[6] = female",0,0,0);
	trans[0][167]	= settr(0,0,0,0,0,"stones[8] = none",0,0,0);
	trans[0][172]	= settr(171,0,197,82,0,"((stones[7]==none))", 1, 2, 0);
	T = trans[0][197] = settr(196,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(196,0,178,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(196,0,184,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(196,0,190,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(196,0,196,0,0,"IF", 0, 2, 0);
	T = trans[ 0][178] = settr(177,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(177,0,177,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][177] = settr(176,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(176,2,173,0,0,"ATOMIC", 1, 2, 0);
	trans[0][173]	= settr(172,2,174,83,0,"printf('Male Frog jumps from %d to %d\\n',6,7)", 1, 2, 0);
	trans[0][174]	= settr(173,0,478,84,84,"(((stones[7]==none)&&(stones[6]==male)))", 1, 2, 0); /* m: 175 -> 478,0 */
	reached0[175] = 1;
	trans[0][175]	= settr(0,0,0,0,0,"stones[7] = male",0,0,0);
	trans[0][176]	= settr(0,0,0,0,0,"stones[6] = none",0,0,0);
	trans[0][198]	= settr(197,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][184] = settr(183,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(183,0,183,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][183] = settr(182,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(182,2,179,0,0,"ATOMIC", 1, 2, 0);
	trans[0][179]	= settr(178,2,180,85,0,"printf('Male Frog jumps from %d to %d\\n',5,7)", 1, 2, 0);
	trans[0][180]	= settr(179,0,478,86,86,"(((stones[7]==none)&&(stones[5]==male)))", 1, 2, 0); /* m: 181 -> 478,0 */
	reached0[181] = 1;
	trans[0][181]	= settr(0,0,0,0,0,"stones[7] = male",0,0,0);
	trans[0][182]	= settr(0,0,0,0,0,"stones[5] = none",0,0,0);
	T = trans[ 0][190] = settr(189,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(189,0,189,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][189] = settr(188,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(188,2,185,0,0,"ATOMIC", 1, 2, 0);
	trans[0][185]	= settr(184,2,186,87,0,"printf('Female Frog jumps from %d to %d\\n',8,7)", 1, 2, 0);
	trans[0][186]	= settr(185,0,478,88,88,"(((stones[7]==none)&&(stones[8]==female)))", 1, 2, 0); /* m: 187 -> 478,0 */
	reached0[187] = 1;
	trans[0][187]	= settr(0,0,0,0,0,"stones[7] = female",0,0,0);
	trans[0][188]	= settr(0,0,0,0,0,"stones[8] = none",0,0,0);
	T = trans[ 0][196] = settr(195,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(195,0,195,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][195] = settr(194,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(194,2,191,0,0,"ATOMIC", 1, 2, 0);
	trans[0][191]	= settr(190,2,192,89,0,"printf('Female Frog jumps from %d to %d\\n',9,7)", 1, 2, 0);
	trans[0][192]	= settr(191,0,478,90,90,"(((stones[7]==none)&&(stones[9]==female)))", 1, 2, 0); /* m: 193 -> 478,0 */
	reached0[193] = 1;
	trans[0][193]	= settr(0,0,0,0,0,"stones[7] = female",0,0,0);
	trans[0][194]	= settr(0,0,0,0,0,"stones[9] = none",0,0,0);
	trans[0][199]	= settr(198,0,224,91,0,"((stones[8]==none))", 1, 2, 0);
	T = trans[0][224] = settr(223,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(223,0,205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(223,0,211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(223,0,217,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(223,0,223,0,0,"IF", 0, 2, 0);
	T = trans[ 0][205] = settr(204,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(204,0,204,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][204] = settr(203,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(203,2,200,0,0,"ATOMIC", 1, 2, 0);
	trans[0][200]	= settr(199,2,201,92,0,"printf('Male Frog jumps from %d to %d\\n',7,8)", 1, 2, 0);
	trans[0][201]	= settr(200,0,478,93,93,"(((stones[8]==none)&&(stones[7]==male)))", 1, 2, 0); /* m: 202 -> 478,0 */
	reached0[202] = 1;
	trans[0][202]	= settr(0,0,0,0,0,"stones[8] = male",0,0,0);
	trans[0][203]	= settr(0,0,0,0,0,"stones[7] = none",0,0,0);
	trans[0][225]	= settr(224,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][211] = settr(210,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(210,0,210,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][210] = settr(209,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(209,2,206,0,0,"ATOMIC", 1, 2, 0);
	trans[0][206]	= settr(205,2,207,94,0,"printf('Male Frog jumps from %d to %d\\n',6,8)", 1, 2, 0);
	trans[0][207]	= settr(206,0,478,95,95,"(((stones[8]==none)&&(stones[6]==male)))", 1, 2, 0); /* m: 208 -> 478,0 */
	reached0[208] = 1;
	trans[0][208]	= settr(0,0,0,0,0,"stones[8] = male",0,0,0);
	trans[0][209]	= settr(0,0,0,0,0,"stones[6] = none",0,0,0);
	T = trans[ 0][217] = settr(216,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(216,0,216,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][216] = settr(215,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(215,2,212,0,0,"ATOMIC", 1, 2, 0);
	trans[0][212]	= settr(211,2,213,96,0,"printf('Female Frog jumps from %d to %d\\n',9,8)", 1, 2, 0);
	trans[0][213]	= settr(212,0,478,97,97,"(((stones[8]==none)&&(stones[9]==female)))", 1, 2, 0); /* m: 214 -> 478,0 */
	reached0[214] = 1;
	trans[0][214]	= settr(0,0,0,0,0,"stones[8] = female",0,0,0);
	trans[0][215]	= settr(0,0,0,0,0,"stones[9] = none",0,0,0);
	T = trans[ 0][223] = settr(222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(222,0,222,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][222] = settr(221,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(221,2,218,0,0,"ATOMIC", 1, 2, 0);
	trans[0][218]	= settr(217,2,219,98,0,"printf('Female Frog jumps from %d to %d\\n',10,8)", 1, 2, 0);
	trans[0][219]	= settr(218,0,478,99,99,"(((stones[8]==none)&&(stones[10]==female)))", 1, 2, 0); /* m: 220 -> 478,0 */
	reached0[220] = 1;
	trans[0][220]	= settr(0,0,0,0,0,"stones[8] = female",0,0,0);
	trans[0][221]	= settr(0,0,0,0,0,"stones[10] = none",0,0,0);
	trans[0][226]	= settr(225,0,251,100,0,"((stones[9]==none))", 1, 2, 0);
	T = trans[0][251] = settr(250,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,232,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,238,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,244,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(250,0,250,0,0,"IF", 0, 2, 0);
	T = trans[ 0][232] = settr(231,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(231,0,231,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][231] = settr(230,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(230,2,227,0,0,"ATOMIC", 1, 2, 0);
	trans[0][227]	= settr(226,2,228,101,0,"printf('Male Frog jumps from %d to %d\\n',8,9)", 1, 2, 0);
	trans[0][228]	= settr(227,0,478,102,102,"(((stones[9]==none)&&(stones[8]==male)))", 1, 2, 0); /* m: 229 -> 478,0 */
	reached0[229] = 1;
	trans[0][229]	= settr(0,0,0,0,0,"stones[9] = male",0,0,0);
	trans[0][230]	= settr(0,0,0,0,0,"stones[8] = none",0,0,0);
	trans[0][252]	= settr(251,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][238] = settr(237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(237,0,237,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][237] = settr(236,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(236,2,233,0,0,"ATOMIC", 1, 2, 0);
	trans[0][233]	= settr(232,2,234,103,0,"printf('Male Frog jumps from %d to %d\\n',7,9)", 1, 2, 0);
	trans[0][234]	= settr(233,0,478,104,104,"(((stones[9]==none)&&(stones[7]==male)))", 1, 2, 0); /* m: 235 -> 478,0 */
	reached0[235] = 1;
	trans[0][235]	= settr(0,0,0,0,0,"stones[9] = male",0,0,0);
	trans[0][236]	= settr(0,0,0,0,0,"stones[7] = none",0,0,0);
	T = trans[ 0][244] = settr(243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(243,0,243,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][243] = settr(242,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(242,2,239,0,0,"ATOMIC", 1, 2, 0);
	trans[0][239]	= settr(238,2,240,105,0,"printf('Female Frog jumps from %d to %d\\n',10,9)", 1, 2, 0);
	trans[0][240]	= settr(239,0,478,106,106,"(((stones[9]==none)&&(stones[10]==female)))", 1, 2, 0); /* m: 241 -> 478,0 */
	reached0[241] = 1;
	trans[0][241]	= settr(0,0,0,0,0,"stones[9] = female",0,0,0);
	trans[0][242]	= settr(0,0,0,0,0,"stones[10] = none",0,0,0);
	T = trans[ 0][250] = settr(249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(249,0,249,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][249] = settr(248,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(248,2,245,0,0,"ATOMIC", 1, 2, 0);
	trans[0][245]	= settr(244,2,246,107,0,"printf('Female Frog jumps from %d to %d\\n',11,9)", 1, 2, 0);
	trans[0][246]	= settr(245,0,478,108,108,"(((stones[9]==none)&&(stones[11]==female)))", 1, 2, 0); /* m: 247 -> 478,0 */
	reached0[247] = 1;
	trans[0][247]	= settr(0,0,0,0,0,"stones[9] = female",0,0,0);
	trans[0][248]	= settr(0,0,0,0,0,"stones[11] = none",0,0,0);
	trans[0][253]	= settr(252,0,278,109,0,"((stones[10]==none))", 1, 2, 0);
	T = trans[0][278] = settr(277,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(277,0,259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(277,0,265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(277,0,271,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(277,0,277,0,0,"IF", 0, 2, 0);
	T = trans[ 0][259] = settr(258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(258,0,258,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][258] = settr(257,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(257,2,254,0,0,"ATOMIC", 1, 2, 0);
	trans[0][254]	= settr(253,2,255,110,0,"printf('Male Frog jumps from %d to %d\\n',9,10)", 1, 2, 0);
	trans[0][255]	= settr(254,0,478,111,111,"(((stones[10]==none)&&(stones[9]==male)))", 1, 2, 0); /* m: 256 -> 478,0 */
	reached0[256] = 1;
	trans[0][256]	= settr(0,0,0,0,0,"stones[10] = male",0,0,0);
	trans[0][257]	= settr(0,0,0,0,0,"stones[9] = none",0,0,0);
	trans[0][279]	= settr(278,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][265] = settr(264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(264,0,264,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][264] = settr(263,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(263,2,260,0,0,"ATOMIC", 1, 2, 0);
	trans[0][260]	= settr(259,2,261,112,0,"printf('Male Frog jumps from %d to %d\\n',8,10)", 1, 2, 0);
	trans[0][261]	= settr(260,0,478,113,113,"(((stones[10]==none)&&(stones[8]==male)))", 1, 2, 0); /* m: 262 -> 478,0 */
	reached0[262] = 1;
	trans[0][262]	= settr(0,0,0,0,0,"stones[10] = male",0,0,0);
	trans[0][263]	= settr(0,0,0,0,0,"stones[8] = none",0,0,0);
	T = trans[ 0][271] = settr(270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(270,0,270,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][270] = settr(269,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(269,2,266,0,0,"ATOMIC", 1, 2, 0);
	trans[0][266]	= settr(265,2,267,114,0,"printf('Female Frog jumps from %d to %d\\n',11,10)", 1, 2, 0);
	trans[0][267]	= settr(266,0,478,115,115,"(((stones[10]==none)&&(stones[11]==female)))", 1, 2, 0); /* m: 268 -> 478,0 */
	reached0[268] = 1;
	trans[0][268]	= settr(0,0,0,0,0,"stones[10] = female",0,0,0);
	trans[0][269]	= settr(0,0,0,0,0,"stones[11] = none",0,0,0);
	T = trans[ 0][277] = settr(276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(276,0,276,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][276] = settr(275,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(275,2,272,0,0,"ATOMIC", 1, 2, 0);
	trans[0][272]	= settr(271,2,273,116,0,"printf('Female Frog jumps from %d to %d\\n',12,10)", 1, 2, 0);
	trans[0][273]	= settr(272,0,478,117,117,"(((stones[10]==none)&&(stones[12]==female)))", 1, 2, 0); /* m: 274 -> 478,0 */
	reached0[274] = 1;
	trans[0][274]	= settr(0,0,0,0,0,"stones[10] = female",0,0,0);
	trans[0][275]	= settr(0,0,0,0,0,"stones[12] = none",0,0,0);
	trans[0][280]	= settr(279,0,305,118,0,"((stones[11]==none))", 1, 2, 0);
	T = trans[0][305] = settr(304,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(304,0,286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(304,0,292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(304,0,298,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(304,0,304,0,0,"IF", 0, 2, 0);
	T = trans[ 0][286] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,285,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][285] = settr(284,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(284,2,281,0,0,"ATOMIC", 1, 2, 0);
	trans[0][281]	= settr(280,2,282,119,0,"printf('Male Frog jumps from %d to %d\\n',10,11)", 1, 2, 0);
	trans[0][282]	= settr(281,0,478,120,120,"(((stones[11]==none)&&(stones[10]==male)))", 1, 2, 0); /* m: 283 -> 478,0 */
	reached0[283] = 1;
	trans[0][283]	= settr(0,0,0,0,0,"stones[11] = male",0,0,0);
	trans[0][284]	= settr(0,0,0,0,0,"stones[10] = none",0,0,0);
	trans[0][306]	= settr(305,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][292] = settr(291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(291,0,291,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][291] = settr(290,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(290,2,287,0,0,"ATOMIC", 1, 2, 0);
	trans[0][287]	= settr(286,2,288,121,0,"printf('Male Frog jumps from %d to %d\\n',9,11)", 1, 2, 0);
	trans[0][288]	= settr(287,0,478,122,122,"(((stones[11]==none)&&(stones[9]==male)))", 1, 2, 0); /* m: 289 -> 478,0 */
	reached0[289] = 1;
	trans[0][289]	= settr(0,0,0,0,0,"stones[11] = male",0,0,0);
	trans[0][290]	= settr(0,0,0,0,0,"stones[9] = none",0,0,0);
	T = trans[ 0][298] = settr(297,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(297,0,297,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][297] = settr(296,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(296,2,293,0,0,"ATOMIC", 1, 2, 0);
	trans[0][293]	= settr(292,2,294,123,0,"printf('Female Frog jumps from %d to %d\\n',12,11)", 1, 2, 0);
	trans[0][294]	= settr(293,0,478,124,124,"(((stones[11]==none)&&(stones[12]==female)))", 1, 2, 0); /* m: 295 -> 478,0 */
	reached0[295] = 1;
	trans[0][295]	= settr(0,0,0,0,0,"stones[11] = female",0,0,0);
	trans[0][296]	= settr(0,0,0,0,0,"stones[12] = none",0,0,0);
	T = trans[ 0][304] = settr(303,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(303,0,303,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][303] = settr(302,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(302,2,299,0,0,"ATOMIC", 1, 2, 0);
	trans[0][299]	= settr(298,2,300,125,0,"printf('Female Frog jumps from %d to %d\\n',13,11)", 1, 2, 0);
	trans[0][300]	= settr(299,0,478,126,126,"(((stones[11]==none)&&(stones[13]==female)))", 1, 2, 0); /* m: 301 -> 478,0 */
	reached0[301] = 1;
	trans[0][301]	= settr(0,0,0,0,0,"stones[11] = female",0,0,0);
	trans[0][302]	= settr(0,0,0,0,0,"stones[13] = none",0,0,0);
	trans[0][307]	= settr(306,0,332,127,0,"((stones[12]==none))", 1, 2, 0);
	T = trans[0][332] = settr(331,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(331,0,313,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(331,0,319,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(331,0,325,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(331,0,331,0,0,"IF", 0, 2, 0);
	T = trans[ 0][313] = settr(312,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(312,0,312,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][312] = settr(311,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(311,2,308,0,0,"ATOMIC", 1, 2, 0);
	trans[0][308]	= settr(307,2,309,128,0,"printf('Male Frog jumps from %d to %d\\n',11,12)", 1, 2, 0);
	trans[0][309]	= settr(308,0,478,129,129,"(((stones[12]==none)&&(stones[11]==male)))", 1, 2, 0); /* m: 310 -> 478,0 */
	reached0[310] = 1;
	trans[0][310]	= settr(0,0,0,0,0,"stones[12] = male",0,0,0);
	trans[0][311]	= settr(0,0,0,0,0,"stones[11] = none",0,0,0);
	trans[0][333]	= settr(332,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][319] = settr(318,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(318,0,318,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][318] = settr(317,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(317,2,314,0,0,"ATOMIC", 1, 2, 0);
	trans[0][314]	= settr(313,2,315,130,0,"printf('Male Frog jumps from %d to %d\\n',10,12)", 1, 2, 0);
	trans[0][315]	= settr(314,0,478,131,131,"(((stones[12]==none)&&(stones[10]==male)))", 1, 2, 0); /* m: 316 -> 478,0 */
	reached0[316] = 1;
	trans[0][316]	= settr(0,0,0,0,0,"stones[12] = male",0,0,0);
	trans[0][317]	= settr(0,0,0,0,0,"stones[10] = none",0,0,0);
	T = trans[ 0][325] = settr(324,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(324,0,324,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][324] = settr(323,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(323,2,320,0,0,"ATOMIC", 1, 2, 0);
	trans[0][320]	= settr(319,2,321,132,0,"printf('Female Frog jumps from %d to %d\\n',13,12)", 1, 2, 0);
	trans[0][321]	= settr(320,0,478,133,133,"(((stones[12]==none)&&(stones[13]==female)))", 1, 2, 0); /* m: 322 -> 478,0 */
	reached0[322] = 1;
	trans[0][322]	= settr(0,0,0,0,0,"stones[12] = female",0,0,0);
	trans[0][323]	= settr(0,0,0,0,0,"stones[13] = none",0,0,0);
	T = trans[ 0][331] = settr(330,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(330,0,330,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][330] = settr(329,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(329,2,326,0,0,"ATOMIC", 1, 2, 0);
	trans[0][326]	= settr(325,2,327,134,0,"printf('Female Frog jumps from %d to %d\\n',14,12)", 1, 2, 0);
	trans[0][327]	= settr(326,0,478,135,135,"(((stones[12]==none)&&(stones[14]==female)))", 1, 2, 0); /* m: 328 -> 478,0 */
	reached0[328] = 1;
	trans[0][328]	= settr(0,0,0,0,0,"stones[12] = female",0,0,0);
	trans[0][329]	= settr(0,0,0,0,0,"stones[14] = none",0,0,0);
	trans[0][334]	= settr(333,0,359,136,0,"((stones[13]==none))", 1, 2, 0);
	T = trans[0][359] = settr(358,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(358,0,340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(358,0,346,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(358,0,352,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(358,0,358,0,0,"IF", 0, 2, 0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,339,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][339] = settr(338,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(338,2,335,0,0,"ATOMIC", 1, 2, 0);
	trans[0][335]	= settr(334,2,336,137,0,"printf('Male Frog jumps from %d to %d\\n',12,13)", 1, 2, 0);
	trans[0][336]	= settr(335,0,478,138,138,"(((stones[13]==none)&&(stones[12]==male)))", 1, 2, 0); /* m: 337 -> 478,0 */
	reached0[337] = 1;
	trans[0][337]	= settr(0,0,0,0,0,"stones[13] = male",0,0,0);
	trans[0][338]	= settr(0,0,0,0,0,"stones[12] = none",0,0,0);
	trans[0][360]	= settr(359,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][346] = settr(345,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(345,0,345,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][345] = settr(344,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(344,2,341,0,0,"ATOMIC", 1, 2, 0);
	trans[0][341]	= settr(340,2,342,139,0,"printf('Male Frog jumps from %d to %d\\n',11,13)", 1, 2, 0);
	trans[0][342]	= settr(341,0,478,140,140,"(((stones[13]==none)&&(stones[11]==male)))", 1, 2, 0); /* m: 343 -> 478,0 */
	reached0[343] = 1;
	trans[0][343]	= settr(0,0,0,0,0,"stones[13] = male",0,0,0);
	trans[0][344]	= settr(0,0,0,0,0,"stones[11] = none",0,0,0);
	T = trans[ 0][352] = settr(351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(351,0,351,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][351] = settr(350,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(350,2,347,0,0,"ATOMIC", 1, 2, 0);
	trans[0][347]	= settr(346,2,348,141,0,"printf('Female Frog jumps from %d to %d\\n',14,13)", 1, 2, 0);
	trans[0][348]	= settr(347,0,478,142,142,"(((stones[13]==none)&&(stones[14]==female)))", 1, 2, 0); /* m: 349 -> 478,0 */
	reached0[349] = 1;
	trans[0][349]	= settr(0,0,0,0,0,"stones[13] = female",0,0,0);
	trans[0][350]	= settr(0,0,0,0,0,"stones[14] = none",0,0,0);
	T = trans[ 0][358] = settr(357,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(357,0,357,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][357] = settr(356,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(356,2,353,0,0,"ATOMIC", 1, 2, 0);
	trans[0][353]	= settr(352,2,354,143,0,"printf('Female Frog jumps from %d to %d\\n',15,13)", 1, 2, 0);
	trans[0][354]	= settr(353,0,478,144,144,"(((stones[13]==none)&&(stones[15]==female)))", 1, 2, 0); /* m: 355 -> 478,0 */
	reached0[355] = 1;
	trans[0][355]	= settr(0,0,0,0,0,"stones[13] = female",0,0,0);
	trans[0][356]	= settr(0,0,0,0,0,"stones[15] = none",0,0,0);
	trans[0][361]	= settr(360,0,386,145,0,"((stones[14]==none))", 1, 2, 0);
	T = trans[0][386] = settr(385,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,367,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,373,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,379,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(385,0,385,0,0,"IF", 0, 2, 0);
	T = trans[ 0][367] = settr(366,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(366,0,366,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][366] = settr(365,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(365,2,362,0,0,"ATOMIC", 1, 2, 0);
	trans[0][362]	= settr(361,2,363,146,0,"printf('Male Frog jumps from %d to %d\\n',13,14)", 1, 2, 0);
	trans[0][363]	= settr(362,0,478,147,147,"(((stones[14]==none)&&(stones[13]==male)))", 1, 2, 0); /* m: 364 -> 478,0 */
	reached0[364] = 1;
	trans[0][364]	= settr(0,0,0,0,0,"stones[14] = male",0,0,0);
	trans[0][365]	= settr(0,0,0,0,0,"stones[13] = none",0,0,0);
	trans[0][387]	= settr(386,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][373] = settr(372,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(372,0,372,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][372] = settr(371,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(371,2,368,0,0,"ATOMIC", 1, 2, 0);
	trans[0][368]	= settr(367,2,369,148,0,"printf('Male Frog jumps from %d to %d\\n',12,14)", 1, 2, 0);
	trans[0][369]	= settr(368,0,478,149,149,"(((stones[14]==none)&&(stones[12]==male)))", 1, 2, 0); /* m: 370 -> 478,0 */
	reached0[370] = 1;
	trans[0][370]	= settr(0,0,0,0,0,"stones[14] = male",0,0,0);
	trans[0][371]	= settr(0,0,0,0,0,"stones[12] = none",0,0,0);
	T = trans[ 0][379] = settr(378,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(378,0,378,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][378] = settr(377,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(377,2,374,0,0,"ATOMIC", 1, 2, 0);
	trans[0][374]	= settr(373,2,375,150,0,"printf('Female Frog jumps from %d to %d\\n',15,14)", 1, 2, 0);
	trans[0][375]	= settr(374,0,478,151,151,"(((stones[14]==none)&&(stones[15]==female)))", 1, 2, 0); /* m: 376 -> 478,0 */
	reached0[376] = 1;
	trans[0][376]	= settr(0,0,0,0,0,"stones[14] = female",0,0,0);
	trans[0][377]	= settr(0,0,0,0,0,"stones[15] = none",0,0,0);
	T = trans[ 0][385] = settr(384,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(384,0,384,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][384] = settr(383,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(383,2,380,0,0,"ATOMIC", 1, 2, 0);
	trans[0][380]	= settr(379,2,381,152,0,"printf('Female Frog jumps from %d to %d\\n',16,14)", 1, 2, 0);
	trans[0][381]	= settr(380,0,478,153,153,"(((stones[14]==none)&&(stones[16]==female)))", 1, 2, 0); /* m: 382 -> 478,0 */
	reached0[382] = 1;
	trans[0][382]	= settr(0,0,0,0,0,"stones[14] = female",0,0,0);
	trans[0][383]	= settr(0,0,0,0,0,"stones[16] = none",0,0,0);
	trans[0][388]	= settr(387,0,413,154,0,"((stones[15]==none))", 1, 2, 0);
	T = trans[0][413] = settr(412,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(412,0,394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(412,0,400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(412,0,406,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(412,0,412,0,0,"IF", 0, 2, 0);
	T = trans[ 0][394] = settr(393,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(393,0,393,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][393] = settr(392,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(392,2,389,0,0,"ATOMIC", 1, 2, 0);
	trans[0][389]	= settr(388,2,390,155,0,"printf('Male Frog jumps from %d to %d\\n',14,15)", 1, 2, 0);
	trans[0][390]	= settr(389,0,478,156,156,"(((stones[15]==none)&&(stones[14]==male)))", 1, 2, 0); /* m: 391 -> 478,0 */
	reached0[391] = 1;
	trans[0][391]	= settr(0,0,0,0,0,"stones[15] = male",0,0,0);
	trans[0][392]	= settr(0,0,0,0,0,"stones[14] = none",0,0,0);
	trans[0][414]	= settr(413,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][400] = settr(399,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(399,0,399,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][399] = settr(398,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(398,2,395,0,0,"ATOMIC", 1, 2, 0);
	trans[0][395]	= settr(394,2,396,157,0,"printf('Male Frog jumps from %d to %d\\n',13,15)", 1, 2, 0);
	trans[0][396]	= settr(395,0,478,158,158,"(((stones[15]==none)&&(stones[13]==male)))", 1, 2, 0); /* m: 397 -> 478,0 */
	reached0[397] = 1;
	trans[0][397]	= settr(0,0,0,0,0,"stones[15] = male",0,0,0);
	trans[0][398]	= settr(0,0,0,0,0,"stones[13] = none",0,0,0);
	T = trans[ 0][406] = settr(405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(405,0,405,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][405] = settr(404,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(404,2,401,0,0,"ATOMIC", 1, 2, 0);
	trans[0][401]	= settr(400,2,402,159,0,"printf('Female Frog jumps from %d to %d\\n',16,15)", 1, 2, 0);
	trans[0][402]	= settr(401,0,478,160,160,"(((stones[15]==none)&&(stones[16]==female)))", 1, 2, 0); /* m: 403 -> 478,0 */
	reached0[403] = 1;
	trans[0][403]	= settr(0,0,0,0,0,"stones[15] = female",0,0,0);
	trans[0][404]	= settr(0,0,0,0,0,"stones[16] = none",0,0,0);
	T = trans[ 0][412] = settr(411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(411,0,411,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][411] = settr(410,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(410,2,407,0,0,"ATOMIC", 1, 2, 0);
	trans[0][407]	= settr(406,2,408,161,0,"printf('Female Frog jumps from %d to %d\\n',17,15)", 1, 2, 0);
	trans[0][408]	= settr(407,0,478,162,162,"(((stones[15]==none)&&(stones[17]==female)))", 1, 2, 0); /* m: 409 -> 478,0 */
	reached0[409] = 1;
	trans[0][409]	= settr(0,0,0,0,0,"stones[15] = female",0,0,0);
	trans[0][410]	= settr(0,0,0,0,0,"stones[17] = none",0,0,0);
	trans[0][415]	= settr(414,0,440,163,0,"((stones[16]==none))", 1, 2, 0);
	T = trans[0][440] = settr(439,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(439,0,421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(439,0,427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(439,0,433,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(439,0,439,0,0,"IF", 0, 2, 0);
	T = trans[ 0][421] = settr(420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(420,0,420,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][420] = settr(419,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(419,2,416,0,0,"ATOMIC", 1, 2, 0);
	trans[0][416]	= settr(415,2,417,164,0,"printf('Male Frog jumps from %d to %d\\n',15,16)", 1, 2, 0);
	trans[0][417]	= settr(416,0,478,165,165,"(((stones[16]==none)&&(stones[15]==male)))", 1, 2, 0); /* m: 418 -> 478,0 */
	reached0[418] = 1;
	trans[0][418]	= settr(0,0,0,0,0,"stones[16] = male",0,0,0);
	trans[0][419]	= settr(0,0,0,0,0,"stones[15] = none",0,0,0);
	trans[0][441]	= settr(440,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][427] = settr(426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(426,0,426,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][426] = settr(425,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(425,2,422,0,0,"ATOMIC", 1, 2, 0);
	trans[0][422]	= settr(421,2,423,166,0,"printf('Male Frog jumps from %d to %d\\n',14,16)", 1, 2, 0);
	trans[0][423]	= settr(422,0,478,167,167,"(((stones[16]==none)&&(stones[14]==male)))", 1, 2, 0); /* m: 424 -> 478,0 */
	reached0[424] = 1;
	trans[0][424]	= settr(0,0,0,0,0,"stones[16] = male",0,0,0);
	trans[0][425]	= settr(0,0,0,0,0,"stones[14] = none",0,0,0);
	T = trans[ 0][433] = settr(432,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(432,0,432,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][432] = settr(431,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(431,2,428,0,0,"ATOMIC", 1, 2, 0);
	trans[0][428]	= settr(427,2,429,168,0,"printf('Female Frog jumps from %d to %d\\n',17,16)", 1, 2, 0);
	trans[0][429]	= settr(428,0,478,169,169,"(((stones[16]==none)&&(stones[17]==female)))", 1, 2, 0); /* m: 430 -> 478,0 */
	reached0[430] = 1;
	trans[0][430]	= settr(0,0,0,0,0,"stones[16] = female",0,0,0);
	trans[0][431]	= settr(0,0,0,0,0,"stones[17] = none",0,0,0);
	T = trans[ 0][439] = settr(438,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(438,0,438,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][438] = settr(437,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(437,2,434,0,0,"ATOMIC", 1, 2, 0);
	trans[0][434]	= settr(433,2,435,170,0,"printf('Female Frog jumps from %d to %d\\n',18,16)", 1, 2, 0);
	trans[0][435]	= settr(434,0,478,171,171,"(((stones[16]==none)&&(stones[18]==female)))", 1, 2, 0); /* m: 436 -> 478,0 */
	reached0[436] = 1;
	trans[0][436]	= settr(0,0,0,0,0,"stones[16] = female",0,0,0);
	trans[0][437]	= settr(0,0,0,0,0,"stones[18] = none",0,0,0);
	trans[0][442]	= settr(441,0,461,172,0,"((stones[17]==none))", 1, 2, 0);
	T = trans[0][461] = settr(460,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(460,0,448,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(460,0,454,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(460,0,460,0,0,"IF", 0, 2, 0);
	T = trans[ 0][448] = settr(447,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(447,0,447,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][447] = settr(446,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(446,2,443,0,0,"ATOMIC", 1, 2, 0);
	trans[0][443]	= settr(442,2,444,173,0,"printf('Male Frog jumps from %d to %d\\n',16,17)", 1, 2, 0);
	trans[0][444]	= settr(443,0,478,174,174,"(((stones[17]==none)&&(stones[16]==male)))", 1, 2, 0); /* m: 445 -> 478,0 */
	reached0[445] = 1;
	trans[0][445]	= settr(0,0,0,0,0,"stones[17] = male",0,0,0);
	trans[0][446]	= settr(0,0,0,0,0,"stones[16] = none",0,0,0);
	trans[0][462]	= settr(461,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][454] = settr(453,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(453,0,453,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][453] = settr(452,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(452,2,449,0,0,"ATOMIC", 1, 2, 0);
	trans[0][449]	= settr(448,2,450,175,0,"printf('Male Frog jumps from %d to %d\\n',15,17)", 1, 2, 0);
	trans[0][450]	= settr(449,0,478,176,176,"(((stones[17]==none)&&(stones[15]==male)))", 1, 2, 0); /* m: 451 -> 478,0 */
	reached0[451] = 1;
	trans[0][451]	= settr(0,0,0,0,0,"stones[17] = male",0,0,0);
	trans[0][452]	= settr(0,0,0,0,0,"stones[15] = none",0,0,0);
	T = trans[ 0][460] = settr(459,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(459,0,459,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][459] = settr(458,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(458,2,455,0,0,"ATOMIC", 1, 2, 0);
	trans[0][455]	= settr(454,2,456,177,0,"printf('Female Frog jumps from %d to %d\\n',18,17)", 1, 2, 0);
	trans[0][456]	= settr(455,0,478,178,178,"(((stones[17]==none)&&(stones[18]==female)))", 1, 2, 0); /* m: 457 -> 478,0 */
	reached0[457] = 1;
	trans[0][457]	= settr(0,0,0,0,0,"stones[17] = female",0,0,0);
	trans[0][458]	= settr(0,0,0,0,0,"stones[18] = none",0,0,0);
	trans[0][463]	= settr(462,0,476,179,0,"((stones[18]==none))", 1, 2, 0);
	T = trans[0][476] = settr(475,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(475,0,469,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(475,0,475,0,0,"IF", 0, 2, 0);
	T = trans[ 0][469] = settr(468,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(468,0,468,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][468] = settr(467,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(467,2,464,0,0,"ATOMIC", 1, 2, 0);
	trans[0][464]	= settr(463,2,465,180,0,"printf('Male Frog jumps from %d to %d\\n',17,18)", 1, 2, 0);
	trans[0][465]	= settr(464,0,478,181,181,"(((stones[18]==none)&&(stones[17]==male)))", 1, 2, 0); /* m: 466 -> 478,0 */
	reached0[466] = 1;
	trans[0][466]	= settr(0,0,0,0,0,"stones[18] = male",0,0,0);
	trans[0][467]	= settr(0,0,0,0,0,"stones[17] = none",0,0,0);
	trans[0][477]	= settr(476,0,478,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][475] = settr(474,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(474,0,474,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][474] = settr(473,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(473,2,470,0,0,"ATOMIC", 1, 2, 0);
	trans[0][470]	= settr(469,2,471,182,0,"printf('Male Frog jumps from %d to %d\\n',16,18)", 1, 2, 0);
	trans[0][471]	= settr(470,0,478,183,183,"(((stones[18]==none)&&(stones[16]==male)))", 1, 2, 0); /* m: 472 -> 478,0 */
	reached0[472] = 1;
	trans[0][472]	= settr(0,0,0,0,0,"stones[18] = male",0,0,0);
	trans[0][473]	= settr(0,0,0,0,0,"stones[16] = none",0,0,0);
	trans[0][480]	= settr(479,0,481,1,0,"break", 0, 2, 0);
	trans[0][481]	= settr(480,0,0,184,184,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
