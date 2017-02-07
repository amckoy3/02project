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

%2
 sum-up-numbers-general([],0).
 sum-up-numbers-general([[]], 0).
 sum-up-numbers-general(L, N):-
    [L1|L2] = L,
    sumHelpers([L1|L2], N).

    sumHelpers([], 0).
    sumHelpers([[]], 0).

    sumHelpers([L1|L2], N):-
    number(L1),
    %N is L1 + Sum,
    sumHelpers(L2, Sum),
    N is L1 + Sum.

    sumHelpers([L1|L2], N):-
    atom(L1),
    sumHelpers(L2,N).

    sumHelpers([L1|L2], N):-
    sumHelpers(L2,Sum),
    N is L1 + Sum.

    sumHelpers([L1|L2],N):-
    \+number(L1),
    sumHelpers(L2, N).


