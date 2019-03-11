% Replace all occurrences of an element from a list with another element
% e

%replace(o, r, l1,...,ln) = [], if l == []
%                           replace(o, r, r,...,ln), if l1 == o
%                           replace(o, r, l1,...,ln), if l1 != o

% replace(O-the original element, R-the new element, L-list, L2-the new
% list)
%replace-flow model:(i,i,i,i), (i,i,i,o)

replace(_, _, [], []).
replace(O, R, [O|T], [R|T2]):-
    replace(O, R, T, T2).
replace(O, R, [H|T], [H|T2]):-
    H \= O,
    replace(O, R, T, T2).

testA:-
    replace(1, 4, [], []),
    replace(3, 4, [2, 4, 3, 7, 3, 4], [2, 4, 4, 7, 4, 4]),
    replace(1, 2, [2, 3], [2, 3]),
    replace(-1, -7, [5, 7, -1, -7], [5, 7, -7, -7]),
    replace(a, b, [a, c, 5], [b, c, 5]).
