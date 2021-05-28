% Given a list of finite sets, find a part of the list
% such that its members are pairwise disjoint and their
% union is the same as the union of the entire list.

% input: for a list S_1,...,S_n of sets, its length n and
% the set s/2 of pairs X, I such that X is in S_I.

% in(I) means that set S_I is included in the solution.

{in(1..n)}.
% achieved: several members of the list are chosen.
#const n=4.
s(
  a,1; b,1; c,1;
  b,2; c,2; d,2;
  a,3; c,3;
  b,4; d,4
).
#const m=2.

I = J :- in(I), in(J), s(X,I), s(X,J).
% achieved: the chosen sets are pairwise disjoin.

covered(X) :- in(I), s(X, I).
% achieved: covered/1 is the union of the chosen sets.

:- s(X,_), not covered(X).
% achieved: the union of the chosen sets is the same as
% the union of the entire list.
#show in/1.
