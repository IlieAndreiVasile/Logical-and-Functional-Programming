;b) Write a function to replace an element E by all elements of a list L1 at all levels of a given list L.

;replace(e [l] [r1,...,rn]) 
;        - [], if l is []
;        - [], if r is []
;        - [l] U replace(e [l] [r2,...rn]), if r1=e
;        - r1 U replace(e [l] [r2,...,rn]), if r1!=e
;        - replace(e l r1) U replace(e l [r2,...,rn]), if r1 is a list

(DEFUN repl(e l r)
(COND
      ((null l) nil)
      ((null r) nil)
      ((and (numberp (car r)) (equal e (car r))) (cons l (repl e  l  (cdr r)))) 
      ((and (numberp (car r)) (/= e (car r))) (cons (car(r)) (repl e l (cdr r))))
      ((listp (car r)) repl e l (cdr r))
)
)

;(repl (2 (list 1 3) (list 1 2 7)))