% Given a list of finite sets and a positive integer m,
% find m pairwise disjoint members of the list.

% input: for a list S_1,...,S_n of sets, its length n and
% the set s/2 of pairs X,I such that X is in S_I;
% a positive integer m.

% in(I) means that set S_I is included in the solution.

{in(1..n)} = m.
% achieved: in/1 is a set of m members of the list.

% S_1 = {a,b,c}, S_2 = {b,c,d}, S_3 = {a,c}, S_4 = {b,d}.

#const n=4.
s(a,1; b,1; c,1;
b,2; c,2; d,2;
a,3; c,3;
b,4; d,4).
#const m=2.

I = J :- in(I), in(J), s(X,I), s(X,J).
% achieved: the chosen sets are pairwise disjoint.

#show in/1.
