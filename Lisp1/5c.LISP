(defun nrLists (N)
	(cond
		((atom N) 0)
		(T (+ 1 (apply #'+ (mapcar #'nrLists N))))
	)
)

(defun nrListe2 (L)
	(cond 
		((null L) 1)
		((atom (car L)) (nrListe2 (cdr L)))
		(T (+  (nrListe2 (car L)) (nrListe2 (cdr L))))
	)
)