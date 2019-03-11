(defun rightSon (L C)
	(cond 
		((and (not (numberp (car L))) (= C 0)) L)
		((not (numberp(car L))) (rightSon (cdr L) (- C 1)))  
		(T (rightSon (cdr L) (+ C (car L))))
	)
)



(defun kLvlNode (L N K)
	(cond 
		((and (= (cadr L) 0) (= N K)) (list (car L)))
		((and (= (cadr L) 1) (= N K)) (list (car L)))
		((and (= (cadr L) 2) (= N K)) (list (car L)))
		((and (= (cadr L) 0) (not(= N K))) nil)
		((and (= (cadr L) 1) (not(= N K))) (kLvlNode (cddr L) (+ N 1) K))
		(T (append (kLvlNode (cddr L) (+ N 1) K) (kLvlNode (rightSon (cddr L) 1) (+ N 1) K)))
	)
)

(rightSon '(B 1 F 0 C 2 D 0 E 0) 1)

(kLvlNode '(A 2 B 0 C 2 D 0 E 0) 0 0)
(kLvlNode '(A 2 B 0 C 2 D 0 E 0) 0 1)
(kLvlNode '(A 2 B 0 C 2 D 0 E 0) 0 2)

(DEFUN testkl()
	(assert (equal (kLvlNode '(A 2 B 0 C 2 D 0 E 0) 0 1) '(B C ) ))
)
