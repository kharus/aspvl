child(X,Y) :- parent(Y,X).

parent(ann,bob; bob,carol; bob,dan).

grandparent(X,Y) :- parent(X,Z), parent(Z,Y).

sibling(X,Y) :- parent(Z,X), parent(Z,Y), X != Y.

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Z) :- ancestor(X,Y), ancestor(Y,Z).
