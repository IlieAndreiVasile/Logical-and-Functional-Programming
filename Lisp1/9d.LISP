;d) Write a function to return the greatest common divisor of all numbers in a linear list.

;gcdl([l1,...,ln] r)
;         - r, if l=[]
;         - gcdl([l2,...,ln] gcd2(l1 r)

(DEFUN gcd2(a b)
(COND

     ((< a b) (gcd2 a (- b a)))
     ((> a b) (gcd2(- a b) b))
     ((equal a b) a)
)
)

;(gcd2 1 7)

(DEFUN gcdl(l r)
(COND
     ((null l) r)
     (gcdl (cdr l) (gcd2 (car l) r)) 
)
)

(gcdl (list 2 3 4) 2)
