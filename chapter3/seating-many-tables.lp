% There are n tables in the room, with m chairs around each
% table. Choose a table for each of m*n guests so that
% guests who like each other sit at the same table, and
% guests who don't like each other sit at different tables.

% input: positive integers m, n; set like/2 of pairs of
% guests who like each other; set dislike/2 of pairs
% of guests who dislike each other.

% at(G,T) means that guest G is assigned table T.

{at(1..m*n,T)} = m :- T = 1..n.
% achieved: for each table, a group of m guests is selected.

T1 = T2 :- at(G,T1), at(G,T2).
% achieved: the groups are pairwise disjoint.

T1 = T2 :- like(G1,G2), at(G1,T1), at(G2,T2).
% achieved: guests who like each other sit at the same table.

T1 != T2 :- dislike(G1,G2), at(G1,T1), at(G2,T2).
% achieved: guests who don't like each other sit at different
% tables.

#show at/2.
