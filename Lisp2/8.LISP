(defun inorder (L)
	(cond
		((null L) nil)
		(T (append (inorder (car (cdr L))) (append (list (car L)) (inorder (car(cdr (cdr L)))))))
	)
)