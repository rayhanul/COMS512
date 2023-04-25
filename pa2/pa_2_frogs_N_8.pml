
#define STONES 17


#define success (\
	(stones[0]==female) && \
	(stones[1]==female) && \
	(stones[2]==female) && \
	(stones[3]==female)   && \
	(stones[4]==female)   && \
	(stones[5]==female)   && \
	(stones[6]==female)   && \
    (stones[7]==female)   && \
	(stones[9]==male)   && \
	(stones[10]==male)   && \
	(stones[11]==male)   && \
	(stones[12]==male)    &&\
	(stones[13]==male)   && \
	(stones[14]==male)   && \
	(stones[15]==male)   && \
	(stones[16]==male)    \
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
		stones[3] = male;
		stones[4] = male;
		stones[5] = male;
		stones[6] = male;
		stones[7] = male;
		stones[8] = none;
		stones[9] = female; 
		stones[10] = female;
		stones[11] = female;
		stones[12] = female;
		stones[13] = female;
		stones[14] = female;
		stones[15] = female;
		stones[16] = female;


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