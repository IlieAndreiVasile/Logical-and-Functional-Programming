;10. Define a function that replaces one node with another one in a n-tree represented as:
;root list_of_nodes_subtree1... list_of_nodes_subtreen)
;Eg: tree is (a (b (c)) (d) (e (f))) and node 'b' will be replace with node 'g' => tree (a (g (c)) (d) (e (f)))}

(DEFUN rep(T A B)
(COND
     ((and (atom (car T)) (equal (car T) A)) cons (B (cdr T A B)))
     ((and (atom (car T)) (not (equal (car T) A))) cons ((car T) (cdr T A B)))
     ((
)
)

