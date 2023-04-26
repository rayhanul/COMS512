/** 
The steps of moving male frog to the place of female frog and moving female frog to the male frog's place. 

                              Female Frog jumps from 4 to 3
                          Male Frog jumps from 2 to 4
                      Female Frog jumps from 5 to 3
                  Male Frog jumps from 1 to 2
              Female Frog jumps from 6 to 5
          Male Frog jumps from 0 to 2
                              Female Frog jumps from 3 to 1
                          Male Frog jumps from 4 to 6
                  Male Frog jumps from 2 to 4
                              Female Frog jumps from 1 to 0
                      Female Frog jumps from 3 to 1
              Female Frog jumps from 5 to 3
                          Male Frog jumps from 6 to 7
                  Male Frog jumps from 4 to 5
          Male Frog jumps from 2 to 4
                              Female Frog jumps from 0 to -1
                      Female Frog jumps from 1 to 0
              Female Frog jumps from 3 to 2
                  Male Frog jumps from 5 to 6
          Male Frog jumps from 4 to 5

The time needed for different value of N is provided below:
N    Time (sec) 
3    0.01
4    0.09 
5    0.32
6    10.2
7    32.4

*** I failed to run for N=8,9 and 10 because either process is killed or terminal closed automatically. 

From the pattern of N and Time, it is clear that the needed time for verifying a given property along with 
the number of states and memory increase as N increases. Therefore, DFS algorithm takes more time to find solution 
from the high volumn of state space, which results the increase in the time of verifying any property. 
*/


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
	
	atomic{
		printf("Male Frog jumps from %d to %d\n", position, position+1);
		(position < STONES-1) && (stones[position+1]==none) --> stones[position]=none; stones[position+1]=male; position=position+1;  
	}
}

inline jump_two_step_male_Frog(position){
	
	atomic{
		printf("Male Frog jumps from %d to %d\n", position, position+2);
		(position < STONES-2) && (stones[position+1] != none) &&  (stones[position+2]==none) --> stones[position]=none; stones[position+2]=male; position=position+2;  
	}
}

inline jump_one_step_female_Frog(position){
	
	atomic{
		printf("Female Frog jumps from %d to %d\n", position, position-1);
		(position > 0) && (stones[position-1] == none) -> stones[position] = none; stones[position-1] = female; position = position - 1;
	}
}

inline jump_two_step_female_Frog(position){
	
	atomic{
		printf("Female Frog jumps from %d to %d\n", position, position-2);
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