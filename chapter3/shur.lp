% Partition {1,..,n} into r sum-free subsets.

% input: positive integers n, r.

% in(I,K) means that I belongs to the K-th subset.

{in(I,1..r)} = 1 :- I = 1..n.
% achieved: set {1,...,n} is partitioned into r subsets.

 :- in(I,K), in(J,K), in(I+J,K).
% achieved: the subsets are sum-free.
