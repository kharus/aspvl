% Hamiltonian cycles in a directed graph.
vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

% input: set vertex/1 of vertices of a graph G;
% set edge/2 of edges of G; a vertex v0 of G.

% in(X,Y) is the set of edges included in the cycle.

{in(X,Y) : edge(X,Y)} = 1 :- vertex(X).
{in(X,Y) : edge(X,Y)} = 1 :- vertex(Y).
% achieved: a set in/2 of edges is selected such that every
% vertex of G is the head of exactly one edge from
% in/2, and the tail of exactly one edge from in/2.

reachable(X) :- in(a,X).
reachable(Y) :- reachable(X), in(X,Y).
% achieved: reachable(X) iff there exists a path of non-zero
% length from v0 to X such that all its edges
% belong to in/2.

:- not reachable(X), vertex(X).
% achieved: all vertices of G belong to reachable/1.

#show in/2.
