









mtype = { ok, err, msg1, msg2, msg3, keyA, keyB, keyI,
 agentA, agentB, agentI, nonceA, nonceB, nonceI }; 
typedef Crypt { 
        mtype key;
        mtype info1;
        mtype info2 
    };

chan network = [0] of {mtype, mtype, Crypt}; 

mtype partnerA;
mtype partnerB;

mtype statusA = err;
bool knows_nonceA, knows_nonceB;
mtype statusB;

active proctype Alice(){
    mtype pkey, pnonce; 
    Crypt data; 

    if  /* choose a partner for this run */
        :: partnerA=agentB; pkey=keyA;
        :: partnerA=agentI; pkey=keyI;
    fi;

    data.key = pkey; data.info1 = agentA; data.info2 = nonceA;

    network ! msg1, partnerA, data;

    network ? msg2, agentA, data;

    (data.key==keyA) && (data.info1==nonceA);
    pnonce=data.info2;
    Crypt data2;
    data2.key=pkey; data2.info1=pnonce; data2.info2=0;
    network ! msg3, partnerA, data2;
    statusA = ok;

}


active proctype Bob() {
    mtype pkey, pnonce;
    Crypt data;
    // read channel data
    network ? msg3, partnerB, data;
    // set to channel 
    (data.info1==agentA) && (data.info2==nonceA);
    pnonce=data.info2;
    partnerB=agentA;
    data.key = keyB; data.info1 = agentB; data.info2 = nonceB;
    network ! msg3, partnerB, nonceB;

    //read channel data 
    network ? msg3, partnerB, data;
    (data.info1==nonceB);
    statusB = ok;
}




active proctype Intruder() {
    mtype msg, recpt;
    Crypt data, intercepted;
    do
        :: network ? (msg, _, data) ->
        if /* perhaps store the message */
            :: intercepted.key = data.key; intercepted.info1 = data.info1; intercepted.info2 = data.info2; 
            :: skip;
        fi;
        if /* record newly learnt nonces */
            :: (data.key == keyI) ->
                if
                :: (data.info1 == nonceA) || (data.info2 == nonceA) -> knows_nonceA = true;
                :: else -> skip;
                fi;
        /* similar for knows_nonceB */
            :: else -> skip;
        fi;
            :: /* Replay or send a message */
            if /* choose message type */
                :: msg = msg1;
                :: msg = msg2;
                :: msg = msg3;
            fi;
            if /* choose recipient */
                :: recpt = agentA;
                :: recpt = agentB;
            fi;
        if /* replay intercepted message or assemble it */
        :: data.key = intercepted.key; data.info1 = intercepted.info1; data.info2 = intercepted.info2; 
        :: if
            :: data.info1 = agentA;
            :: data.info1 = agentB;
            :: data.info1 = agentI;
            :: knows_nonceA -> data.info1 = nonceA;
            :: knows_nonceB -> data.info1 = nonceB;
            :: data.info1 = nonceI;
        fi;
        /* similar for data.info2 and data.key */
        fi;
            network ! msg, recpt, data;
    od;
}

ltl part2 { [] (statusA && statusB) }



init{
    // keyA = 1;
    // keyB = 2;
    // keyI = 3;
    // agentA = 4;
    // agentB = 5;
    // agentI = 6;
    // nonceA = 7;
    // nonceB = 8;
    // nonceI = 9;

    run Alice();
    run Bob();
    run Intruder();

}