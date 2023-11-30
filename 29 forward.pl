
has_fur(dog).
has_fur(cat).
has_feathers(bird).
lays_eggs(bird).
has_scales(fish).
gives_milk(dog).
gives_milk(cat).


mammal(X) :- has_fur(X), gives_milk(X).
mammal(X) :- has_fur(X), gives_milk(X), lays_eggs(X).


query_mammal(X) :- mammal(X), write(X), write(' is a mammal.'), nl.

:- query_mammal(dog).
:- query_mammal(cat).
:- query_mammal(bird).