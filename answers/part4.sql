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
ORDER BY AVG(defense + maxHP + spDef) DESC;

I decided to wager a battle against Chris. He went for attack + spAtk + spdAtk while I went for
defense + maxHP + spDef. In this query, Sim Trainer Geplin and his absolutely ridiculous defense Level
comes out on top.
