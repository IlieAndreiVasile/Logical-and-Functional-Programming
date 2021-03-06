(defun rightSon (L C)
	(cond 
		((and (not (numberp (car L))) (= C 0)) L)
		((not (numberp(car L))) (rightSon (cdr L) (- C 1)))  
		(T (rightSon (cdr L) (+ C (car L))))
	)
)
; L - list , K - currentDepth, N - Node
(defun depthNode (L K N)
	(cond
		((equal (car L) N) K)
		((equal (cadr L) 0) -1)
		((equal (cadr L) 1) (depthNode (cddr L) (+ K 1) N))
        (T (max (depthNode (cddr L) (+ K 1) N) (depthNode (rightSon (cddr L) 1) (+ K 1) N)))
	)
)