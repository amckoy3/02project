/**1**/
 sum-up-numbers([],0).
 sum-up-numbers(L, N):-
    [L1|L2] = L,
    sumHelper(L2, L1, N).
    
    sumHelper([], Acc, Acc).

    sumHelper([L1|L2], Acc, N):-
    number(L1),
    Sum is L1 + Acc,
    sumHelper(L2, Sum, N).

    sumHelper(L2,Sum,N):-
    sum-up-numbers(L2,N).

