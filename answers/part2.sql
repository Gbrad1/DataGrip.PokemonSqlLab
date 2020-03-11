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
