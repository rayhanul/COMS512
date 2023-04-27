


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
		(position < STONES-1) && (stones[position+1]==none) -> stones[position]=none; stones[position+1]=male; position=position+1;  
	}
}

inline jump_two_step_male_Frog(position){
	
	atomic{
		printf("Male Frog jumps from %d to %d\n", position, position+2);
		(position < STONES-2) && (stones[position+1] != none) &&  (stones[position+2]==none) -> stones[position]=none; stones[position+2]=male; position=position+2;  
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
	if
		:: jump_one_step_male_Frog(position)
		:: jump_two_step_male_Frog(position)
	fi 
}

proctype femaleFrog(byte position){
	if 
		:: jump_one_step_female_Frog(position)
		:: jump_two_step_female_Frog(position)
	fi 
}

proctype main_prc(byte position){

	
}


init {

		
		stones[0] = male;
		stones[1] = male;
		stones[2] = male;
		stones[3] = none;
		stones[4] = female;
		stones[5] = female;
		stones[6] = female;

	atomic {
		do 
		:: stones[0]==none -> run maleFrog(0); run femaleFrog(0);
		:: stones[1]==none -> run maleFrog(1); run femaleFrog(1);
		:: stones[2]==none -> run maleFrog(2); run femaleFrog(2);
		:: stones[3]==none -> run maleFrog(3); run femaleFrog(3);
		:: stones[4]==none -> run maleFrog(4); run femaleFrog(4);
		:: stones[5]==none -> run maleFrog(5); run femaleFrog(5);
		:: stones[6]==none -> run maleFrog(6); run femaleFrog(6);
		od 

	}
}