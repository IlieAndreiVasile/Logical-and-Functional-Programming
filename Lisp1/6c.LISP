(defun isLast (L POZ)
	(cond 
		((and (null L) (= POZ 0)) T)
		((and (null L) (not (= POZ 0))) nil)
		((atom (car L)) (isLast (cdr L) (- POZ 1)))
		(T (isLast (cdr L) POZ))
	)
)
	

(defun solve(L1 L2 POZ)
	(cond
		((null L) nil)
		((and (atom (car L)) (isLast L2 POZ)) (append (list car L) (solve (cdr L1) L2 (+ POZ 1))))
		((and (atom (car L)) (not (isLast L2 POZ))) (solve (cdr L1) L2 (+ POZ 1)))
		(;mi am dat seama ca nu mere :))