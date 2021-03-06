(defun rightSon (L C)
	(cond 
		((and (not (numberp (car L))) (= C 0)) L)
		((not (numberp(car L))) (rightSon (cdr L) (- C 1)))  
		(T (rightSon (cdr L) (+ C (car L))))
	)
)


(defun nrNiv (L)
	(cond
		((= (cadr L) 0) 1)
		((= (cadr L) 1) (+ 1 (nrNiv (cddr L))))
		((= (cadr L) 2) (+ 1 (max (nrNiv (cddr L)) (nrNiv (rightSon (cddr L) 1)))) )
	)
)