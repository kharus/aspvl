% Cover the 8-by-8 chessboard by twenty-one 3-by-1 tiles and
% one 1-by-1 tile.

% h(R,C) means that there is a tile at (R,C), (R,C+1), (R,C+2).
% v(R,C) means that there is a tile at (R,C), (R+1,C), (R+2,C).

{h(1..8,1..6); v(1..6,1..8)} = 21.
% achieved: positions of 21 tiles are chosen.

:- h(R,C), h(R,C+(1..2)).
% achieved: no overlaps between horizontal tiles.

:- v(R,C), v(R+(1..2),C).
% achieved: no overlaps between vertical tiles.

:- h(R,C), v(R-(0..2),C+(0..2)).
% achieved: no overlaps between a horizontal tile and a
% vertical tile.
