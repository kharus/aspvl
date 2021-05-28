% Exotic pets puzzle, Part 1

first_name(abner; bruce; chuck; duane).
last_name(engels; foster; gunter; halevy).
pet(iguana; jackal; king_cobra; llama).
% achieved: first_name/1, last_name/1, pet/1 are the sets
% of first names, last names, and pet species.

{full_name(F,L) : last_name(L)} = 1 :- first_name(F).
{owns(F,P) : pet(P)} = 1 :- first_name(F).
% achieved: a unique last name and unique pet species are
% chosen for each first name.

%F1 = F2 :- full_name(F1,L), full_name(F2,L).
%F1 = F2 :- owns(F1,P), owns(F2,P).
% achieved: the chosen names and pets are pairwise distinct.

#show full_name/2.
#show owns/2.
