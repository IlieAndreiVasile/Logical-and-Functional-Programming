(defun normL (L)
  (cond 
	((null L) nil)
	((atom (car L)) (append  (normL  (cdr L)) (list (car L)) ) )
	(T (append (normL (cdr L)) (normL (car L))))
   )
)