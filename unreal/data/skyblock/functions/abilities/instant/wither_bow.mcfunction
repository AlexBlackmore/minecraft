tag @e[type=wither,predicate=skyblock:nausea1] add wither_bow
tag @e[type=wither_skeleton,predicate=skyblock:nausea1] add wither_bow
execute at @p[predicate=skyblock:wither_bow] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players operation @p[predicate=skyblock:wither_bow] damage = @p[predicate=skyblock:wither_bow] attack_damage
scoreboard players add @p[predicate=skyblock:wither_bow] damage 6

execute store result score @e[tag=wither_bow] health run data get entity @e[limit=1,tag=wither_bow] Health
execute if score @e[limit=1,tag=wither_bow] health < @p[predicate=skyblock:wither_bow] damage run kill @e[tag=wither_bow]
scoreboard players operation @e[tag=wither_bow] health -= @p[predicate=skyblock:wither_bow] damage
execute store result entity @e[limit=1,tag=wither_bow] Health float 1 run scoreboard players get @e[limit=1,tag=wither_bow] health

effect clear @e[tag=wither_bow] nausea
tag @e[tag=wither_bow] remove wither_bow

function skyblock:abilities/reset_instant