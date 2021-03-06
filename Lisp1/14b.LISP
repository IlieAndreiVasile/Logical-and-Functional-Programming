; product(l1...ln) :- 1, l=0;
;                     l1 * union(l2...ln), if atom(l1)
;                     pruduct(l1) U product(l2...ln), otherwise

(defun productt(L)
	(cond 
		((null L) 1)
		((atom (car L)) (* (car L) (productt (cdr L)) ))
		(T (* (productt (car L) ) (productt (cdr L))))
	)
)

(defun testsB()
 	(assert (= (productt '(1 1 1 1)) 1))
    (assert (= (productt '(1 (1(1(1))))) 1))
	(assert (= (productt '(1 (3(1)) 2)) 6))
	(assert (= (productt '(1 2 3 1 2)) 12))
	(assert (= (productt '(2 (2 (2 (2 2))))) 32))
	"All testsB passed"
)