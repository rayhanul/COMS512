
#define STONES 13

#define success (\
	(stones[0]==female) && \
	(stones[1]==female) && \
	(stones[2]==female) && \
	(stones[3]==female)   && \
	(stones[4]==female)   && \
	(stones[5]==female)   && \
	(stones[7]==male) && \
	(stones[8]==male) && \
	(stones[9]==male) && \
	(stones[10]==male)   && \
	(stones[11]==male)   && \
	(stones[12]==male)    \
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
							:: move_male(4,5);
							:: move_male(3,5);
							:: move_female(5,6)
							:: move_female(5,7)
							fi 
	:: stones[6] == none -> if 
							:: move_male(5,6);
							:: move_male(4,6);
							:: move_female(6,7)
							:: move_female(6,8)
							fi 
	:: stones[7] == none -> if 
							:: move_male(6,7);
							:: move_male(5,7);
							:: move_female(7,8)
							:: move_female(7,9)
							fi 

	:: stones[8] == none -> if 
							:: move_male(7,8);
							:: move_male(6,8);
							:: move_female(8,9)
							:: move_female(8,10)
							fi 
	:: stones[9] == none -> if 
							:: move_male(8,9);
							:: move_male(7,9);
							:: move_female(9,10)
							:: move_female(9,11)
							fi 

	:: stones[10] == none -> if 
							:: move_male(9,10);
							:: move_male(8,10);
							:: move_female(10,11)
							:: move_female(10,12)
							fi 

	:: stones[11] == none -> if 
							:: move_male(10,11);
							:: move_male(9,11);
							:: move_female(11,12)
							fi 	
	:: stones[12] == none -> if 
							:: move_male(11,12);
							:: move_male(10,12)
							fi 	
od 
	
}


init {

		
		stones[0] = male;
		stones[1] = male;
		stones[2] = male;
		stones[3] = male;
		stones[4] = male;
		stones[5] = male;
		stones[6] = none;
		stones[7] = female;
		stones[8] = female;
		stones[9] = female;
		stones[10] =female;
		stones[11] = female
		stones[12] = female;
		stones[13] = female;

}