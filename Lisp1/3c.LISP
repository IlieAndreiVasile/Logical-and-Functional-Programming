(defun gcdL (L)
  (cond 
     ((null L) 0)
     ((atom (car L)) (gcd (gcdL (cdr L) ) (car L)))
	 (T (gcd (gcdL (car L)) (gcdL (cdr L))))
  )
)  


(defun gcd2 (N)
	(cond 
		((atom N) N)
		(T (apply #'gcd (mapcar #'gcd2 N)))
    )
)