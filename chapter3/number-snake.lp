% Number Snake puzzle

#const n=3.
filled(1,1,6).
filled(2,2,2).
filled(3,2,8).
filled(1,3,1).
% input: positive integer n; set filled/3 of triples
% r,c,x such that the given n-by-n grid has
% number x in row r, column c.

{filled(R,C,1..n*n)} = 1 :- R = 1..n, C = 1..n.
% achieved: every square of the grid is filled with
% a number between 1 and n^2.

:- not filled(_,_,X), X = 1..n*n.
% achieved: every number between 1 and n^2 is included.

(R1-R2)**2+(C1-C2)**2 <= 2 :-
                      filled(R1,C1,X),
                      filled(R2,C2,X+1).
% achieved: consecutive numbers connect horizontally,
% vertically, or diagonally.

#show filled/3.
