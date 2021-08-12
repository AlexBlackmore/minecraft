tag @e[type=slime,predicate=skyblock:nausea1] add slime_bow
tag @e[type=magma_cube,predicate=skyblock:nausea1] add slime_bow
execute at @p[predicate=skyblock:slime_bow] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players set @p[predicate=skyblock:slime_bow] damage 4
scoreboard players operation @p[predicate=skyblock:slime_bow] damage *= @p[predicate=skyblock:slime_bow] attack_damage
scoreboard players add @p[predicate=skyblock:slime_bow] damage 80

execute store result score @e[tag=slime_bow] health run data get entity @e[limit=1,tag=slime_bow] Health
execute if score @e[limit=1,tag=slime_bow] health < @p[predicate=skyblock:slime_bow] damage run kill @e[tag=slime_bow]
scoreboard players operation @e[tag=slime_bow] health -= @p[predicate=skyblock:slime_bow] damage
execute store result entity @e[limit=1,tag=slime_bow] Health float 1 run scoreboard players get @e[limit=1,tag=slime_bow] health

item modify entity @p[predicate=skyblock:slime_bow] weapon.offhand skyblock:subtract_item

effect clear @e[tag=slime_bow] nausea
tag @e[tag=slime_bow] remove slime_bow

function skyblock:abilities/reset_instant