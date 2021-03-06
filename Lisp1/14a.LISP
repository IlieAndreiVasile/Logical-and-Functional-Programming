;union(l1...ln, p1...pn)- p , if l = 0
                          ;l1 U union(l2...ln, p1...pn), if l1 not in p
                          ;union(l2...ln, p1...pn, otherwise				  
				
(defun unionn (L P)
	(cond 
		( (null L) p )
		( (not (member(car L) P)) (cons (car L) (union (cdr L) P )) )
		( T (union (cdr L) P ) )
	)
)

(defun testsA()
 	(assert (equal (unionn '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6) ))
	(assert (equal (unionn '() '(1 2 3)) '(1 2 3) ) )
	(assert (equal (unionn '(1 2 3) '(1 2 3 4 5)) '(1 2 3 4 5) ) )
	(assert (equal (unionn '(1 2 3) '(1 4 5 2)) '(3 1 4 5 2) ) )
	(assert (equal (unionn '(1 2 3) '()) '(1 2 3) ) )
	"All testsA passed"
)