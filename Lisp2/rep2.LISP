;2. Return the list of nodes on the k-th level of a tree of type (1).

(DEFUN klevel(l k)
  (COND
    ((atom l) '())
    ((= k 0) (remove-if (complement #'atom) l))
    (t (mapcan #'(lambda (l)
                   (klevel l (1- k)))
               l))
  )
)

(klevel '(A (B) (C (D E))) 2)
(klevel '(a (b (g)) (c (d (e)) (f))) 2)

(DEFUN tests()
(COND
   ((not (equal (klevel '(A (B) (C (D E))) 2) '(D E))) nil)
)
)