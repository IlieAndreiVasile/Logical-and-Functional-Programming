%Define a predicate to determine the greatest common divisor of all numbers from a
%list

% gcd(A-a nubmer, B-a number, R-the greatest common divisor of the 2
% numbers)
% flow model (i,i,i), (i,i,o)
gcd(X, 0, X):- !.
gcd(0, X, X):- !.
gcd(X, Y, D):- X > Y, !, Z is X mod Y, gcd(Y, Z, D).
gcd(X, Y, D):- Z is Y mod X, gcd(X, Z, D).


%gcdl([l1,...,ln, r) = 0, if l=[]
%                      l1, if l == [l1]
%                      gcdl(l2,...,ln, l1), if r == []
%                      gcdl(l3,...,ln, gcd(r, l2)), if r != []

%gcdl(L-list of elements, R-the greatest common divisor of all numbers
%                                                       from the list)
%flow model (i,i), (i,o)
gcdl([], _).
gcdl([H|[]], 0):-
    gcdl([], H).
gcdl([H1, H2|T], R):-
    R = [],
    gcd(H1, H2, G),
    R is G,
    gcdl([H2|T], R).
gcdl([H|T], R):-
    R \= [],
    gcd(R, H, G),
    R is G,
    gcdl(T, R).
