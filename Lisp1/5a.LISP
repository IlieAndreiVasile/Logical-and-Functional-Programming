(defun doubleNth (L N)
	(cond
		((= 1 N) (append (list (car L) (car L)) (cdr L)))
		(T (cons (car L ) (doubleNth (cdr L) (- N 1))))
	)
)