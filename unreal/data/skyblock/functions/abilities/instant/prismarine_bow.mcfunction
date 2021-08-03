tag @e[type=squid,predicate=skyblock:nausea1] add prismarine_bow
tag @e[type=guardian,predicate=skyblock:nausea1] add prismarine_bow
tag @e[type=elder_guardian,predicate=skyblock:nausea1] add prismarine_bow
execute at @p[predicate=skyblock:prismarine_bow] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players operation @p[predicate=skyblock:prismarine_bow] damage = @p[predicate=skyblock:prismarine_bow] attack_damage
scoreboard players operation @p[predicate=skyblock:prismarine_bow] damage += @p[predicate=skyblock:prismarine_bow] attack_damage
scoreboard players operation @p[predicate=skyblock:prismarine_bow] damage += @p[predicate=skyblock:prismarine_bow] attack_damage
scoreboard players add @p[predicate=skyblock:prismarine_bow] damage 30

execute store result score @e[tag=prismarine_bow] health run data get entity @e[limit=1,tag=prismarine_bow] Health
execute if score @e[tag=prismarine_bow] health < @p[predicate=skyblock:prismarine_bow] damage run kill @e[tag=prismarine_bow]
scoreboard players operation @e[tag=prismarine_bow] health -= @p[predicate=skyblock:prismarine_bow] damage
execute store result entity @e[limit=1,tag=prismarine_bow] Health float 1 run scoreboard players get @e[limit=1,tag=prismarine_bow] health

item modify entity @p[predicate=skyblock:prismarine_bow] weapon.offhand skyblock:subtract_item

effect clear @e[tag=prismarine_bow] nausea
tag @e[tag=prismarine_bow] remove prismarine_bow

function skyblock:abilities/reset_instant