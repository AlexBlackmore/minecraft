tag @e[predicate=skyblock:nausea1] add soulstealer_bow
execute at @p[predicate=skyblock:soulstealer_bow_rare] run playsound minecraft:entity.experience_orb.pickup player @p
execute at @p[predicate=skyblock:soulstealer_bow_epic] run playsound minecraft:entity.experience_orb.pickup player @p

execute at @e[limit=1,tag=soulstealer_bow] run particle minecraft:explosion
execute at @e[limit=1,tag=soulstealer_bow] run playsound minecraft:entity.generic.explode ambient @a
execute if entity @p[predicate=skyblock:soulstealer_bow_rare] run effect give @e[tag=soulstealer_bow] wither 10 1
execute if entity @p[predicate=skyblock:soulstealer_bow_epic] run effect give @e[tag=soulstealer_bow] wither 40 1

effect clear @e[tag=soulstealer_bow] nausea
kill @e[type=armor_stand,tag=soulstealer_bow,limit=1,sort=nearest]
tag @e[tag=soulstealer_bow] remove soulstealer_bow

function skyblock:abilities/reset_instant