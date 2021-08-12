scoreboard players set @p[predicate=skyblock:scorpion_bow] damage 35
scoreboard players operation @p[predicate=skyblock:scorpion_bow] damage *= @p[predicate=skyblock:scorpion_bow] attack_damage

data merge entity @e[limit=1,tag=calc] {CustomPotionEffects:[{Id:2b,Duration:120,Amplifier:5b},{Id:19b,Duration:120,Amplifier:4b}]}

effect give @p[predicate=skyblock:scorpion_bow] hunger 1
xp add @p[predicate=skyblock:scorpion_bow] -150 points