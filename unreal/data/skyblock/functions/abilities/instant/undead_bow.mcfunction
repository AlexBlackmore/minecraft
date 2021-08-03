tag @e[type=drowned,predicate=skyblock:nausea1] add undead_bow
tag @e[type=husk,predicate=skyblock:nausea1] add undead_bow
tag @e[type=phantom,predicate=skyblock:nausea1] add undead_bow
tag @e[type=skeleton,predicate=skyblock:nausea1] add undead_bow
tag @e[type=skeleton_horse,predicate=skyblock:nausea1] add undead_bow
tag @e[type=stray,predicate=skyblock:nausea1] add undead_bow
tag @e[type=wither,predicate=skyblock:nausea1] add undead_bow
tag @e[type=wither_skeleton,predicate=skyblock:nausea1] add undead_bow
tag @e[type=zoglin,predicate=skyblock:nausea1] add undead_bow
tag @e[type=zombie,predicate=skyblock:nausea1] add undead_bow
tag @e[type=zombie_horse,predicate=skyblock:nausea1] add undead_bow
tag @e[type=zombie_villager,predicate=skyblock:nausea1] add undead_bow
tag @e[type=zombified_pigman,predicate=skyblock:nausea1] add undead_bow
execute at @p[predicate=skyblock:undead_bow] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players operation @p[predicate=skyblock:undead_bow] damage = @p[predicate=skyblock:undead_bow] attack_damage
scoreboard players add @p[predicate=skyblock:undead_bow] damage 16

execute store result score @e[tag=undead_bow] health run data get entity @e[limit=1,tag=undead_bow] Health
execute if score @e[tag=undead_bow] health < @p[predicate=skyblock:undead_bow] damage run kill @e[tag=undead_bow]
scoreboard players operation @e[tag=undead_bow] health -= @p[predicate=skyblock:undead_bow] damage
execute store result entity @e[limit=1,tag=undead_bow] Health float 1 run scoreboard players get @e[limit=1,tag=undead_bow] health

effect clear @e[tag=undead_bow] nausea
tag @e[tag=undead_bow] remove undead_bow

function skyblock:abilities/reset_instant