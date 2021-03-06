(defun rightSon (L C)
	(cond
		((and (not (numberp (car L))) (= C 0)) L)
		((numberp (car L)) (rightSon (cdr L) (+ C (car L))))
		(T (rightSon (cdr L) (- C 1)))
	)
)

(defun inorder (L)
	(cond
		((= (car (cdr L)) 0) (list (car L)))
		((= (car (cdr L)) 1) (append (inorder (car (cdr(cdr L)))) (car L)))
		((= (car (cdr L)) 2) (append (inorder (cdr(cdr L))) (append (list(car L)) (inorder (rightSon (cdr(cdr L)) 1)))))
	)
)