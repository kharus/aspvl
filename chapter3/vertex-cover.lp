% Vertex cover of size n.

vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

% input: set vertex/1 of vertices of a graph G;
% set edge/2 of edges of G; positive integer n.

{in(X) : vertex(X)} = n.
% achieved: in/1 is a set consisting of n vertices of G.

covered(X,Y) :- edge(X,Y), in(X).
covered(X,Y) :- edge(X,Y), in(Y).
% achieved: covered/2 is the set of edges of G that have
% an endpoint in in/1.

:- edge(X,Y), not covered(X,Y).
% achieved: every edge of G is in covered/2.

#show in/1.
