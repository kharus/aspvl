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

F1 = F2 :- full_name(F1,L), full_name(F2,L).
F1 = F2 :- owns(F1,P), owns(F2,P).
% achieved: the chosen names and pets are pairwise distinct.

:- full_name(abner,engels).
:- full_name(abner,foster).
% achieved: Abner's last name is neither Engels nor Foster.

:- owns(chuck,iguana).
:- owns(duane,iguana).
% achieved: iguana belongs neither to Chuck nor to Duane.

:- full_name(X,foster), owns(X,jackal).
:- full_name(X,foster), owns(X,king_cobra).
% achieved: Mr. Foster owns neither jackal nor king cobra.

:- owns(duane,llama).
% achieved: Duane's pet is not llama.

:- full_name(duane,engels).
% achieved: Duane's last name is not Engels.

:- owns(abner,king_cobra).
% achieved: Abner's pet is not king cobra.

:- full_name(abner,gunter).
% achieved: Abner's last name is not Gunter.
% Exotic pets puzzle, Part 2

:- full_name(bruce,foster).
% achieved: Bruce's last name is not Foster.

:- full_name(X,halevy), owns(X,iguana).
% achieved: Mr. Halevy's pet is not iguana.

answer(X,Y) :- full_name(X,Y), owns(X,jackal).

#show answer/2.
