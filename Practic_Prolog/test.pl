prim(1, _):-
    false, !.
prim(2, _):-
    true, !.
prim(N, K):-
    N mod K = 0,
    false, !.
prim(_, 1):-
    true, !.
prim(N, K):-
    N mod K =\= 0,
    K2 is K-1,
    prim(N, K2).


list([], []).
list([1|T], R):-
    list(T, R).
list([H|T], R):-
    X is H div 2,
    not(prim(H, X)),
    list(T, R).
list([H|T], [H|R]):-
    X is H div 2,
    prim(H, X),
    list(T, R).


tests:-
    list([2, 6, 7, 3, 4, 10], [2, 7, 3]),
    list([1, 2, 3, 4, 5, 6, 7, 8], [2, 3, 5, 7]),
    list([2, 4, 6, 8, 10, 173], [2, 173]),
    list([1741, 857, 307], [1741, 857, 307]).
