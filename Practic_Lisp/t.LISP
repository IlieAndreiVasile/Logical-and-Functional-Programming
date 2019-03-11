;Sa se scrie o functie care sterge 1-ul, al 2-lea, al 4-lea, al 8-lea, ... element al unei liste liniare
;Teste:
;(1 2 3 4 5 6) -> (3 5 6)
;(1 2 3) -> (3)
;(1 2 3 4 5 6 7 8 9) -> (3 5 6 7 9)
;(1 2 3 4 5 6 7 8 9 10 11 ... 16 17) -> (3 5 6 7 9 10 ... 15 17)

(DEFUN sterge(L N P)
(COND
     ((null L) nil)
     ((equal N P) (sterge (cdr L) (* N 2) (+ P 1)))
     (T (cons (car L) (sterge (cdr L) N (+ P 1)))) 
)
)

(sterge '(1 2 3 4 5 6) 1 1)
(sterge '(1 2 3) 1 1)
(sterge '(1 2 3 4 5 6 7 8 9) 1 1)
(sterge '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17) 1 1)