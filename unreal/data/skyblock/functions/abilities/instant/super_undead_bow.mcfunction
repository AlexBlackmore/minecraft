tag @e[predicate=skyblock:nausea1] add super_undead_bow
execute at @e[type=armor_stand,tag=projectile] run execute at @e[type=!armor_stand,distance=0..3] run tp @e[type=armor_stand,tag=projectile,limit=1,sort=nearest] ~ ~ ~

execute at @e[limit=1,tag=super_undead_bow] run tag @e[distance=0..16,tag=!player,tag=!armor_stand,limit=1,sort=nearest] add super_undead_bow_reflect

tag @p[predicate=skyblock:undead_bow] add super_undead_bow_player
tag @p[predicate=skyblock:super_undead_bow] add super_undead_bow_player
tag @p[predicate=skyblock:death_bow] add super_undead_bow_player
execute at @p[tag=super_undead_bow_player] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard players operation @p[tag=super_undead_bow_player] damage = @p[tag=super_undead_bow_player] attack_damage
scoreboard players add @p[predicate=skyblock:super_undead_bow] damage 44
scoreboard players add @p[predicate=skyblock:death_bow] damage 60

execute store result score @e[tag=super_undead_bow_reflect] health run data get entity @e[limit=1,tag=super_undead_bow_reflect] Health
execute if score @e[limit=1,tag=super_undead_bow_reflect] health < @p[tag=super_undead_bow_player] damage run kill @e[tag=super_undead_bow_reflect]
scoreboard players operation @e[tag=super_undead_bow_reflect] health -= @p[tag=super_undead_bow_player] damage
execute store result entity @e[limit=1,tag=super_undead_bow_reflect] Health float 1 run scoreboard players get @e[limit=1,tag=super_undead_bow_reflect] health

effect clear @e[tag=super_undead_bow] nausea
kill @e[type=armor_stand,tag=super_undead_bow,limit=1,sort=nearest]
tag @e[tag=super_undead_bow_reflect] remove super_undead_bow_reflect
tag @p[tag=super_undead_bow_player] remove super_undead_bow_player

function skyblock:abilities/reset_instant