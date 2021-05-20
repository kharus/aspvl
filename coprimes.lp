% Numbers from 1 to n that are coprime with k.

% input: positive integer n; integer k.

% achieved: noncoprime(N) iff N is a number from {1,...,n}
% such that N and k have a common divisor greater
% than 1.
noncoprime(N) :-
              N = 1..n,
              I = 2..N,
              N\I = 0,
              k\I = 0.

% achieved: coprime(N) iff N is a number from {1,...,n}
% that is coprime with k.

coprime(N) :-
           N = 1..n,
           not noncoprime(N).
#show coprime/1.
