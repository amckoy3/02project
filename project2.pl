/**1**/
 sum-up-numbers([],0).
 sum-up-numbers(L, N):-
    L1 is L,
    sumAssist([L1|L2], N),
    sumHelper(L2, L1, N).
 sumHelper([L1|L2], Acc, N):-
    Sum is L1 + Acc,
    sumHelper(L2, Sum, N).

