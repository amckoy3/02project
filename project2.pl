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

%3
    min-above-min(L1,L2,N):-
    [H|T]=L1,
    [H1|T1]=L2,
    append-list([H|T],[H1|T1], N),
    min-end([H|N], [H1|T1], N).

    append-list([],[],_).

    append-list([H|T], [H1|T1],[_,_| Result]):-
    number(H1),
    append([H|T], [H1|T1],[_,_| Result]).

    append-list([_|T], [H1|T1], N):-
    \+number(H1),
    append(T, [H1|T1], N).

    min-first-list([L1Min], L1Min).

    min-second-list(L2Min, L2Min).

    min-end([H|T], [H1|T1], N):-
    min-first-list([H|T], N),
    min-second([H1|T1], N).

    min-first-list([H, X|T], N):-
    H =< X,
    min-first-list([H|T, N).

    min-first-list([H, X|T], N):-
    H>X,
    min-first-list([X|T, N).

    min-second-list([H1, J|T1], N):-
    H1 =< J,
    min-second-list([H1|T1], N).

    min-second-list([H1, J|T1], N):-
    H1>J,
    min-second-list([J|T1], N).    

    min-second-list([J|T1], N):-
    N>J,
    min-first-list(J,J).

%4

    common-unique-elements([],_,[]).
    common-unique-elements(L1,L2,N):-
    [H|T]=L1,
    [H1|T1]=L2,
    common-unique-elements([H|T], [H1|T1], [_|N]).
    
    common-unique([H|T], [_|T1], [H|N]):-
    member(T1, H),!, common-unique(T, T1, N). %is Head in second list.
 
    member([H|_], H).
    member([_|T], H):-
    member(T,H).


    common-unique([_|T], [_|T1], N):-
    common-unique(T,T1,N).  %if head is not, return tail

