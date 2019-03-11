;10. Define a function that replaces one node with another one in a n-tree represented as:
;root list_of_nodes_subtree1... list_of_nodes_subtreen)
;Eg: tree is (a (b (c)) (d) (e (f))) and node 'b' will be replace with node 'g' => tree (a (g (c)) (d) (e (f)))}


;rep(x1...x2 A B): - B, if atom x and x = A
;            - x1, if atom X and x != A
;            - rep(x1 A B) U rep(x2 A b) ... U rep(xn A B), if x is sublist



(DEFUN rep(X A B)
(COND	
	((and (atom X) (equal A X)) B)
	((and (atom X) (not (equal A X))) X)
	(T (mapcar #'(lambda (X) (rep X A B)) X))
)
)

(rep '(a (b (c)) (d) (e (f))) 'b 'g)
(rep '(b (b (c)) (d) (e (b))) 'b 'g)
(rep '(a (g (c)) (d) (e (f))) 'b 'g)

(DEFUN tests()
       (assert (equal (rep '(a (b (c)) (d) (e (f))) 'b 'g) '(a (g (c)) (d) (e (f)))))
       (assert (equal (rep '(a (g (c)) (d) (e (f))) 'b 'g) '(a (g (c)) (d) (e (f)))))
       (assert (equal (rep '(b (b (c)) (d) (e (b))) 'b 'g) '(g (g (c)) (d) (e (g)))))
       "all tests passed!"
)