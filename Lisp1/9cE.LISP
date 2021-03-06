(defun addC (L C)
	(cond
		((and (null L) (= C 0)) nil)
		((and (null L) (not (= C 0))) (list C))
		(T (cons (mod (+ (car L) C) 10) (addC (cdr L) (floor (+ (car L) C) 10))))
	)
)

(defun sumL (L1 L2 C)
	(cond 
		((and(null L1) (= C 0)) L2)
		((and(null L2) (= C 0)) L1)
		((null L1) (addC L2 C))
		((null L2) (addC L1 C))
		(T (cons (mod (+ (car L1) (+ (car L2) C)) 10) (sumL (cdr L1) (cdr L2) (floor (+ (car L1) (+ (car L2) C)) 10))))
	)
)

(defun solve(L1 L2)
	(reverse (sumL (reverse L1) (reverse L2) 0))
)