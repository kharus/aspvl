composite(N) :-
             N = 1..5,
             I = 2..N-1,
             N\I = 0.

prime(N) :-
         N = 2..5,
         not composite(N).
