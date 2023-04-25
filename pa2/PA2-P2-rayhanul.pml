


        //                       Female Frog jumps from 4 to 3
        //                   Male Frog jumps from 2 to 4
        //               Female Frog jumps from 5 to 3
        //           Male Frog jumps from 1 to 2
        //       Female Frog jumps from 6 to 5
        //   Male Frog jumps from 0 to 2
        //                       Female Frog jumps from 3 to 1
        //                   Male Frog jumps from 4 to 6
        //           Male Frog jumps from 2 to 4
        //                       Female Frog jumps from 1 to 0
        //               Female Frog jumps from 3 to 1
        //       Female Frog jumps from 5 to 3
        //                   Male Frog jumps from 6 to 7
        //           Male Frog jumps from 4 to 5
        //   Male Frog jumps from 2 to 4
        //                       Female Frog jumps from 0 to -1
        //               Female Frog jumps from 1 to 0
        //       Female Frog jumps from 3 to 2
        //           Male Frog jumps from 5 to 6
        //   Male Frog jumps from 4 to 5


// N    Time (sec) 
// 3    0.01
// 4    0.09 
// 5    0.32
// 6    10.2
// 7    32.4

// From the pattern of N and TIme, it is clear that the needed time increases with the increase of N. 
// This happens because the number of states grows with N and DFS algorithm takes more time to find solution.


#define STONES 7

#define success (\
	(stones[0]==female) && \
	(stones[1]==female) && \
	(stones[2]==female) && \
	(stones[4]==male)   && \
	(stones[5]==male)   && \
	(stones[6]==male)      \
	)



mtype = { none, male, female }
mtype stones[STONES];

ltl { []!success }

inline jump_one_step_male_Frog(position){
	printf("Male Frog jumps from %d to %d\n", position, position+1);
	atomic{
		(position < STONES-1) && (stones[position+1]==none) --> stones[position]=none; stones[position+1]=male; position=position+1;  
	}
}

inline jump_two_step_male_Frog(position){
	printf("Male Frog jumps from %d to %d\n", position, position+2);
	atomic{
		(position < STONES-2) && (stones[position+1] != none) &&  (stones[position+2]==none) --> stones[position]=none; stones[position+2]=male; position=position+2;  
	}
}

inline jump_one_step_female_Frog(position){
	printf("Female Frog jumps from %d to %d\n", position, position-1);
	atomic{
			(position > 0) && (stones[position-1] == none) -> stones[position] = none; stones[position-1] = female; position = position - 1;
	}
}

inline jump_two_step_female_Frog(position){
	printf("Female Frog jumps from %d to %d\n", position, position-2);
	atomic{
			(position > 1) && (stones[position-1] != none) && (stones[position-2] == none) -> stones[position] = none; stones[position-2] = female; position = position - 2;
	}
}

proctype maleFrog(byte position){
	do
		:: jump_one_step_male_Frog(position)
		:: jump_two_step_male_Frog(position)
	od 
}

proctype femaleFrog(byte position){
	do 
		:: jump_one_step_female_Frog(position)
		:: jump_two_step_female_Frog(position)
	od 
}

init {
	atomic {
		
		stones[0] = male;
		stones[1] = male;
		stones[2] = male;
		stones[3] = none;
		stones[4] = female;
		stones[5] = female;
		stones[6] = female;

		byte I = 0;
        do
        :: I == STONES/2 -> break;
   		:: else -> 
             run maleFrog(I);
			 run femaleFrog(STONES-I-1);
             I++
        od
	}
}