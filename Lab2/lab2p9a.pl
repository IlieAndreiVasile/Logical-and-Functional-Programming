%Insert an element on the position n in a list

%insert([l1,...,ln, e) = [e], if l=[]
%                        l1 U insert([l2,...,ln], e)

%insert(L-list, E-element, RL-list)
%insert-flow model:(i,i,i), (i,i,o)
insert([], E, [E]).
insert([H|T], E, [H|R]):-
    insert(T, E, R).

testA:-
    insert([], 5, [5]),
    insert([1,2,3],4,[1,2,3,4]).
