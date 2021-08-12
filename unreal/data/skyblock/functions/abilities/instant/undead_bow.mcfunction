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

tag @p[predicate=skyblock:undead_bow] add undead_bow_player
tag @p[predicate=skyblock:super_undead_bow] add undead_bow_player
tag @p[predicate=skyblock:death_bow] add undead_bow_player

execute at @p[tag=undead_bow_player] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players operation @p[tag=undead_bow_player] damage = @p[tag=undead_bow_player] attack_damage
scoreboard players add @p[predicate=skyblock:undead_bow] damage 16
scoreboard players add @p[predicate=skyblock:super_undead_bow] damage 44
scoreboard players add @p[predicate=skyblock:death_bow] damage 60

execute store result score @e[tag=undead_bow] health run data get entity @e[limit=1,tag=undead_bow] Health
execute if score @e[limit=1,tag=undead_bow] health < @p[tag=undead_bow_player] damage run kill @e[tag=undead_bow]
scoreboard players operation @e[tag=undead_bow] health -= @p[tag=undead_bow_player] damage
execute store result entity @e[limit=1,tag=undead_bow] Health float 1 run scoreboard players get @e[limit=1,tag=undead_bow] health

effect clear @e[tag=undead_bow] nausea
tag @e[tag=undead_bow] remove undead_bow
tag @p[tag=undead_bow_player] remove undead_bow_player

function skyblock:abilities/reset_instant