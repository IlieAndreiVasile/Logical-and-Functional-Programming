(defun returnNth (L N P)
	(cond
		((null L) nil)
		((= N P) (car L))
		(T (returnNth (cdr L) N (+ P 1)))
	)
)