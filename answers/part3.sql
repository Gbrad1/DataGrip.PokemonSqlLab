What is each pokemons primary type?
$ SELECT pokemons.name, types.name FROM pokemons
INNER JOIN types ON pokemons.primary_type = types.id;

What is Rufflets secondary type? 18 = Flying
SELECT pokemons.name, types.name AS "Secondary Type" FROM pokemons
INNER JOIN types ON pokemons.secondary_type = types.id WHERE pokemons.name = 'Rufflet';

What are the names of the pokemon that belong to their trainer with trainerID 303? Wailord and Vileplume
$ SELECT pokemons.name, pokemon_trainer.trainerID FROM pokemons
INNER JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id WHERE pokemon_trainer.trainerID = '303';

How many pokemon have the secondary type Poison? 31d
$ SELECT * FROM pokemons WHERE secondary_type = '7';

What are all the primary types and how many pokemon have that type?
$ SELECT primary_type, count(*) AS num FROM poikemons GROUP BY primary_type;

How many pokemon at level 100 does each traier with at least one level 100 pokemon have? 963
$ SELECT COUNT(pokemon_id) FROM pokemon_trainer WHERE pokelevel = '100' GROUP BY trainerID;;

How many pokemon only belong to one trainer and no other? 13
$ SELECT pokemon_id, count(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING count (*) = 1;
