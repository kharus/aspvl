vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

% Cliques of size n.

% input: set vertex/1 of vertices of a graph G;
% set edge/2 of edges of G; positive integer n.

{in(X) : vertex(X)} = n.
% achieved: in/1 is a set consisting of n vertices of G.

X = Y :- in(X), in(Y), not edge(X,Y), not edge(Y,X).
% achieved: in/1 is a clique.

#show in/1.
