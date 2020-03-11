What is each pokemons primary type?
$ SELECT primary_type FROM pokemons;

What is Rufflets secondary type? 18 = Flying
$ SELECT secondary_type FROM pokemons WHERE name = 'rufflet';
$ SELECT * FROM types;

What are the names of the pokemon that belong to their trainter with trainerID 303? Ace, Duo, Elina, and Sean.
$ SELECT * FROM trainers WHERE trainerID = '303';

How many pokemon have the secondary type Poison? 31
$ SELECT * FROM pokemons WHERE secondary_type = '7';

What are all the primary types and how many pokemon have that type?
$ SELECT primary_type, count(*) AS num FROM poikemons GROUP BY primary_type;

How many pokemon at level 100 does each traier with at least one level 100 pokemon have? 963
$ SELECT COUNT(pokemon_id) FROM pokemon_trainer WHERE pokelevel = '100' GROUP BY trainerID;;

How many pokemon only belong to one trainer and no other? 13
$ SELECT pokemon_id, count(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING count (*) = 1;
