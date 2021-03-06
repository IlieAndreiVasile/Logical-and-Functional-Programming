(defun maxSuperf (L)
	(cond 
		((null L) 0)
		((atom (car L)) (max (car L) (maxSuperf (cdr L))))
		((listp (car L)) (maxSuperf (cdr L)))
	)
)