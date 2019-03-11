;c) Write a function to determines the sum of two numbers in list representation, and returns the
;   corresponding decimal number, without transforming the representation of the number from list to
;   number.

;sum(l1 l2 r)
;            - 

(DEFUN sum(l1 l2 r)
(COND
      ((and(null l1) (null l2)) r)
      ((< (length l1) (length l2)) (sum l1 (reverse((cdr (reverse l2)))) (+ (* 10 r) (car (reverse l2)))))
      ((> (length l1) (length l2)) (sum (reverse((cdr (reverse l1)))) l2 (+ (* 10 r) (car (reverse ll)))))
      ((= (length l1) (length l2))
               (sum (reverse((cdr (reverse l1)))) (reverse((cdr (reverse l2)))) (+ (* r 10 (+ r (car (reverse ll)) (car (reverse l2)))))))
)
)