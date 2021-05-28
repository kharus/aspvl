% Graph coloring.
vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).
color(red; blue; green).


% vertex(a; b).     %
% edge(a,b).        %
% color(red; blue). %


% input: set vertex/1 of vertices of a graph G; set edge/2
% of edges of G; set color/1 of colors.
% color(X,C) means that the color of vertex X is C.

{color(X,C) : color(C)} = 1 :- vertex(X).
% achieved: for every vertex X there is a unique color C
% such that color(X,C).

C1 != C2 :- edge(X,Y), color(X,C1), color(Y, C2).
% achieved: no two adjacent vertices share the same color.

#show color/2.
