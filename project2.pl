/**1**/
 sum-up-numbers([],0).
 sum-up-numbers(L, N):-
    [L1|L2] = L,
    sumHelper([L2|L1], N).
    
    sumHelper([], 0).

    sumHelper([L1|L2], N):-
    number(L1),
    sumHelper(L2, Sum),
    N is L1 + Sum.

    sumHelper([L1|L2],N):-
    \+number(L1),
    sumHelper(L2,N).

