(defun findRightSon(l cnt)
  (cond
    ((and (not (numberp (car l))) (equal cnt 0)) l)
    ((not (numberp (car l))) (findRightSon (cdr l) (- cnt 1)))
    (T (findRightSon (cdr l) (+ cnt (car l))))
  )
)

