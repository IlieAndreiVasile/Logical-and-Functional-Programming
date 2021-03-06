(defun rightSon (L C)
	(cond 
		((and (atom (car L)) (= C 0)) L)
		((atom (car L)) (rightSon (cdr L) (- C 1)))  
		(T (rightSon (cdr L) (+ C (car L))))
	)
)

(defun isThere (L E)
	(cond
		((null L) nil)
		((and (atom (car L)) (equal (car L) E)) T)
		((and (atom (car L)) (not (equal (car L) E))) (isThere (cdr L) E))
		(T (or (isThere (car L) E) (isThere (cdr L) E)))
	)
)


(defun getPath (L E)
	(cond
	   ((and (equal (cadr L) 0) (equal (car L) E)) (list E))
	   ((and (equal (cadr L) 1) (isThere ( 
	   ; de continuat...
	   ((and (equal (cadr L) 0) (not(equal (car L) E))) nil)
	)
)