% For a heterogeneous list, formed from integer numbers and list of
% numbers, define a predicate to determine the maximum number of the
% list, and then to replace this value in sublists with the maximum
% value of sublist.
%Eg.: [1, [2, 5, 7], 4, 5, [1, 4], 3, [1, 3, 5, 8, 5,4], 5, [5, 9, 1],2]
%=> [1, [2, 7, 7], 4, 5, [1, 4], 3, [1, 3, 8, 8, 8,4], 5, [9, 9, 1], 2]

%find the max number from a list
maxNrList([], -99999).
maxNrList([H|T], R):-
    is_list(H),
    maxNrList(T, R).
maxNrList([H|T], R):-
    number(H),
    maxNrList(T, R),
    H =< R.
maxNrList([H|T], H):-
    number(H),
    maxNrList(T, R),
    H > R.


%find the max element from a list
maxElSublist([], -99999).
maxElSublist([H|T], R):-
    maxElSublist(T, R),
    H =< R.
maxElSublist([H|T], H):-
    maxElSublist(T, R),
    H > R.


%replace all occurences of an element in a list with another element
replace(_, _, [], []).
replace(O, R, [O|T], [R|T2]):-
    replace(O, R, T, T2).
replace(O, R, [H|T], [H|T2]):-
    H \= O,
    replace(O, R, T, T2).


%replaceMax(l1,...,ln) = [], if l == []
%                        replaceMax(l2,...,ln), if l1 is number
%                        replaceMax(replace(maxNrList, MaxElSublist,
%                                           l1,...,l2)), if l1 is list

%replaceMax(L-the initial list, R-the modified list)
%replaceMax-flow model: (i, i), (i, o)
replaceMax([], []).
replaceMax([H|T], [H|R]):-
    number(H),
    replaceMax(T, R).
replaceMax([H|T], [H1|R]):-
    is_list(H),
    maxNrList([H|T], M1),
    maxElSublist(H, M2),
    replace(M1, M2, H, H1),
    replaceMax(T, R).

testB:-
    replaceMax([], []),
    replaceMax([2, 4], [2, 4]),
    replaceMax([[3, 5], [6, 7]], [[3, 5], [6, 7]]),
    replaceMax([2, 4, [4, 6, 7], 5], [2, 4, [4, 6, 7], 5]),
    replaceMax([2, 4, [2, 5, 4, 8], 5], [2, 4, [2, 8, 4, 8], 5]).

replaceMax2(L, R):-
    maxNrList(L, M),
    replaceMax2(L, M, R).
replaceMax2([], _, []).
replaceMax2([H|T], M1, [H|R]):-
    number(H),!,
    replaceMax2(T, M1, R).
replaceMax2([H|T], M1, [H1|R]):-
    is_list(H),
    %maxNrList([H|T], M1),
    maxElSublist(H, M2),
    replace(M1, M2, H, H1),
    replaceMax2(T, M1, R).


%replaceMax([], 0, []).
%replaceMax([H|T], M1, [H|R]):-
%    number(H),
%    replaceMax(T, M1, R).
%replaceMax([H|T], M1, [H1|R]):-
%    is_list(H),
%    %maxNrList([H|T], M1),
%    maxElSublist(H, M2),
%    replace(M1, M2, H, H1),
%    replaceMax(T, M1, R).



%    %replaceMax([], [], []).
%replaceMax([LH|LT], [H|T], [H|R]):-
%    number(H),
%    replaceMax([LH|LT], T, R).
%replaceMax([LH|LT], [H|T], [H1|R]):-
%    is_list(H),
%    maxNrList([LH|LT], M1),
%    maxElSublist(H, M2),
%    replace(M1, M2, H, H1),
%    replaceMax([LH|LT], T, R).












