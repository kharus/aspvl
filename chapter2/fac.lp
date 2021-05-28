% Factorial of n.

% input: nonnegative integer n.

fac(0,1).
fac(N+1, F*(N+1)) :-
         fac(N,F),
         N<n.
% achieved: fac/2 = {(0,0!),...,(n,n!)}.

fac(F) :- fac(n,F).
% achieved: fac/1 = {n!}.

%#show fac/1.
