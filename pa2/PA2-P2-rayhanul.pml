/** 
The steps of moving male frog to the place of female frog and moving female frog to the male frog's place. 

      Male Frog jumps from 2 to 3
      Female Frog jumps from 4 to 2
      Female Frog jumps from 5 to 4
      Male Frog jumps from 3 to 5
      Male Frog jumps from 1 to 3
      Male Frog jumps from 0 to 1
      Female Frog jumps from 2 to 0
      Female Frog jumps from 4 to 2
      Female Frog jumps from 6 to 4
      Male Frog jumps from 5 to 6
      Male Frog jumps from 3 to 5
      Male Frog jumps from 1 to 3
      Female Frog jumps from 2 to 1
      Female Frog jumps from 4 to 2
      Male Frog jumps from 3 to 4



The time needed for different value of N is provided below:
N    Time (sec) 
3    0
4    0
5    0
6    0
7    0
8    0
9    0.01
10   0.02

 
Although, the recorded time for different N value (3 to 8) 0 here, but the running
time increase as N increases, for example, the running time for N=11 is higher than N=10. 
From the pattern of N and Time, it is clear that the needed time for verifying a 
given property along with the number of states and memory increase as N increases. 
Due to high number of states, DFS algorithm takes more time to find the counter 
example or examples satisfying the specification for higher value of N. 
Which results the increase in the time of verifying any property of interest.  
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

inline move_male(prev, current){
	atomic{
		printf("Male Frog jumps from %d to %d\n", prev, current);
		(stones[current]==none) && (stones[prev]==male)-> stones[current]= male; stones[prev]=none;
	}
}

inline move_female(current, next){
	atomic{
		printf("Female Frog jumps from %d to %d\n", next, current);
		(stones[current]==none) && (stones[next]==female)-> stones[current]= female; stones[next]=none;
	}
}

active proctype main_process(){

do 
	:: stones[0] == none -> if 
							:: move_female(0,1)
							:: move_female(0,2)
							fi 
	:: stones[1] == none -> if 
							:: move_male(0,1);
							:: move_female(1,2)
							:: move_female(1,3)
							fi 
	:: stones[2] == none -> if 
							:: move_male(0,2);
							:: move_male(1,2);
							:: move_female(2,3)
							:: move_female(2,4)
							fi 
	:: stones[3] == none -> if 
							:: move_male(1,3);
							:: move_male(2,3);
							:: move_female(3,4)
							:: move_female(3,5)
							fi 
	:: stones[4] == none -> if 
							:: move_male(3,4);
							:: move_male(2,4);
							:: move_female(4,5)
							:: move_female(4,6)
							fi 
	:: stones[5] == none -> if 
							:: move_male(3,5);
							:: move_male(4,5);
							:: move_female(5,6)
							fi 	
	:: stones[6] == none -> if 
							:: move_male(5,6);
							:: move_male(4,6)
							fi 	
od 
	
}


init {	
		stones[0] = male;
		stones[1] = male;
		stones[2] = male;
		stones[3] = none;
		stones[4] = female;
		stones[5] = female;
		stones[6] = female;
}