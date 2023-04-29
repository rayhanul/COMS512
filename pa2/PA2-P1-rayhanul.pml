

mtype = { ok, err, msg1, msg2, msg3, keyA, keyB, keyI, agentA, agentB, agentI, nonceA, nonceB, nonceI }; 
typedef Crypt { 
        mtype key;
        mtype info1;
        mtype info2;
    };

chan network = [0] of {mtype, mtype, Crypt}; 

mtype partnerA;
mtype partnerB;

mtype statusA = err;
bool knows_nonceA, knows_nonceB;
mtype statusB ;

active proctype Alice(){
    mtype pkey, pnonce; 
    Crypt data, data2, data3; 

    if  /* choose a partner for this run */
        :: partnerA=agentB; pkey=keyB;
        :: partnerA=agentI; pkey=keyI;
    fi;

    data.key = pkey; data.info1 = agentA; data.info2 = nonceA; 

    network ! msg1, partnerA, data;

    network ? msg2, agentA, data2;
    (data2.key==pkey) && (data2.info1==nonceA) && (msg2==nonceB);
    pnonce=data2.info2;

    data3.key=pkey; data3.info1=pnonce; data3.info2=0;
    network ! msg3, partnerA, data3;
    statusA = ok;
}


active proctype Bob() {
    mtype pkey, pnonce;
    Crypt data;

    network ? msg1, agentB, data;

    (data.key==keyB) && (data.info2==nonceA) ;
    partnerB = data.info1;
    pnonce=data.info2;
    if  /* choose a partner for this run */
        :: partnerA=agentB; pkey=keyB;
        :: partnerA=agentI; pkey=keyI;
    fi;
    Crypt data2;
    data2.key = pkey; data2.info1 = pnonce; data2.info2 = nonceB; 
    network ! nonceB, partnerB, data2;

    network ? msg3, agentB, data;
    (data.key == keyB) && (data.info1 == nonceB);
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
            :: (data.key == keyI) ->
                if
                :: (data.info1 == nonceB) || (data.info2 == nonceB) -> knows_nonceB = true;
                :: else -> skip;
                fi;
        
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
        :: if
            :: data.info2 = agentA;
            :: data.info2 = agentB;
            :: data.info2 = agentI;
            :: knows_nonceA -> data.info2 = nonceA;
            :: knows_nonceB -> data.info2 = nonceB;
            :: data.info2 = nonceI;
        fi;

        :: if
            :: data.key = keyA;
            :: data.key = keyB;
            :: data.key = keyI;
            :: knows_nonceA -> data.key = nonceA;
            :: knows_nonceB -> data.key = nonceB;
            :: data.key = nonceI;
        fi;
        /**end of update */
        
        fi;
            network ! msg, recpt, data;
    od;
}

 ltl part2 { [] (statusA ==ok && statusB == ok -> (partnerA==agentB <-> partnerB==agentA))}

// ltl part2_2 {[] (statusA==ok && statusB==ok -> ! knows_nonceA)}

//ltl part2_3 {[] (statusB==ok && statusA==ok -> ! knows_nonceB)}

