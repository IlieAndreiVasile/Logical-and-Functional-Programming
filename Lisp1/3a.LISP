(defun insertPoz (L P E)
	(cond 
		((null L) nil)
		((= 0 (mod P 2))  (append (list (car L) E) (insertPoz (cdr L) (+ P 1) E) ))
		(T (cons (car L) (insertPoz (cdr L) (+ P 1) E)))
	)
)