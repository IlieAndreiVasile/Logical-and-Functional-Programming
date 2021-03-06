(defun solve (L)
    (cond 
		((null L) nil)
		((atom (car L)) (solve(cdr L)))
		((and (listp (car L)) (= (mod (length (car L)) 2) 1)) (append (list (car (car L))) 
                                                                              (append (solve (car L)) (solve (cdr L)))))
		(T (append (solve (car L)) (solve (cdr L))))
	)
)