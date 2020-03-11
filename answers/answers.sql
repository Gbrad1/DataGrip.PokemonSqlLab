********Part1********

Unzipped the files

Create your pokemon schema.
$ CREATE DATABASE Pokemon;

Access database with the following command.
$ USE Pokemon;

Added each file using the below command.
$ SOURCE file/PATH

********Part2********

What are all the types a pokemon can have?
$ SELECT * FROM types;

1. Normal
2. Water
3. Grass
4. Rock
5. Fire
6. Ground
7. Poison
8. Bug
9. Electric
10. Dragon
11. Steel
12. Dark
13. Fighting
14. Psychic
15. Ghost
16. Fairy
17. Ice
18. Flying

What is the name of the pokemon with id 45? Eevee
$ SELECT * FROM pokemons WHERE id = '45';

How many pokemon are there? 656
$ SELECT * FROM pokemons;

How many types are there? 18
$ SELECT * FROM types;

How many pokemon have a secondary type?
$ SELECT * FROM pokemons WHERE secondary_type;

********Part3********

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
$ SELECT * FROM pokemon_trainer WHERE pokelevel = '100';

How many pokemon only belong to one trainer and no other? 13
$ SELECT pokemon_id, count(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING count (*) = 1;

********Part4********
//currently working query
SELECT poke.name AS "Pokemon",
trainername AS "Trainer Name",
pokelevel AS "Level",
defense AS "Defense",
maxhp AS "maxHP",
spdef AS "spDef",
typeP.name AS "Primary Type",
typeS.name AS "Secondary Type"
FROM pokemon.trainers AS pokeBall
LEFT JOIN pokemon_trainer AS pt ON pokeBall.trainerID = pt.trainerID
LEFT JOIN pokemons AS poke ON poke.id = pt.pokemon_id
LEFT JOIN types AS typeP ON poke.primary_type = typeP.id
LEFT JOIN types AS typeS ON poke.secondary_type = typeS.id
GROUP BY poke.name, pokeBall.trainername, pokelevel, defense, maxhp, spDef, typeP.name, typeS.name
ORDER BY AVG(defense + maxHP + spDef);
