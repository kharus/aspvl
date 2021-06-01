color(red; green; yellow; blue; white).

nation(brit; swede; dane; norwegian; german).

pet(dog; bird; cat; horse; fish).

drink(tea; coffee; milk; beer; water).

smoke(dunhill; pallmall; blend; bluemaster; princess).

{house(O,N,C,P,D,S) : nation(N), color(C), pet(P), drink(D), smoke(S)} = 1 :- O = 1..5.

next(X,X+1) :- X = 1..4.
next(X,X-1) :- X = 2..5.

O1 = O2 :- house(O1, N, _,_,_,_), house(O2, N, _,_,_,_).
O1 = O2 :- house(O1, _, C,_,_,_ ), house(O2, _, C,_,_,_).
O1 = O2 :- house(O1, _, _, P,_,_), house(O2, _, _, P,_,_).
O1 = O2 :- house(O1, _, _, _,D,_), house(O2, _, _, _,D,_).
O1 = O2 :- house(O1, _, _, _,_,S), house(O2, _, _, _,_,S).

% 1. The Brit lives in the red house.
:- not house(_,brit, red, _, _,_).

% 2. The Swede keeps a dog.
:- not house(_,swede, _, dog, _, _).

% 3. The Dane drinks tea.
:- not house(_,dane, _,_,tea,_).

% 4. The green house is on the left of the white house.
O1 < O2 :- house(O1, _, green, _, _, _), house(O2, _, white, _, _, _).

% 5. The owner of the green house drinks coffee.
:- not house(_, _, green, _, coffee,_).

% 6. The person who smokes Pall Mall rears birds.
:- not house(_, _, _, bird, _, pallmall).

% 7. The owner of the yellow house smokes Dunhill.
:- not house(_, _, yellow, _, _, dunhill).

% 8. The man living in the house right in the center drinks milk.
:- not house(3, _, _, _, milk, _).

% 9. The Norwegian lives in the first house.
:- not house(1, norwegian, _, _, _, _).

% 10. The man who smokes Blend lives next to the one who has cats.
:- house(O1, _, _, _, _, blend), house(O2, _, _, cat, _, _), not next(O1, O2).

% 11. The man who has horses lives next to the Dunhill smoker.
:- house(O1, _, _, _, _, dunhill), house(O2, _, _, horse, _, _), not next(O1, O2).

% 12. The man who smokes Bluemaster drinks beer.
:- not house(_, _, _, _, beer, bluemaster).

% 13. The German smokes Princess.
:- not house(_,german, _,_,_,princess).

% 14. The Norwegian lives next to the blue house.
:- house(O1, norwegian, _, _, _, _), house(O2, _, blue, _, _, _), not next(O1, O2).

% 15. The man who smokes Blend has a neighbor who drinks water.
:- house(O1, _, _, _, _, blend), house(O2, _, _, _, water, _), not next(O1, O2).

#show house/6.
