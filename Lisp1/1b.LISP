(defun exists(L E)
	(cond
		((null L) nil)
		((and (numberp (car L)) (= (car L) E)) T)
		((numberp(car L)) (exists (cdr L) E))
        (T (or (exists (car L) E) (exists (cdr L) E)))
    )
)	