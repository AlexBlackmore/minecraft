tag @e[predicate=skyblock:nausea1] add explosive_shot
execute at @e[type=armor_stand,tag=projectile] run execute at @e[type=!armor_stand,distance=0..3] run tp @e[type=armor_stand,tag=projectile,limit=1,sort=nearest] ~ ~ ~
execute at @e[type=armor_stand,tag=projectile] run tag @e[distance=0..3,type=!armor_stand] add explosive_shot_radius

execute at @e[limit=1,tag=explosive_shot] run particle minecraft:explosion_emitter
execute at @e[limit=1,tag=explosive_shot] run playsound minecraft:entity.generic.explode ambient @a

scoreboard players operation @p[predicate=skyblock:explosive_bow] damage = @p[predicate=skyblock:explosive_bow] attack_damage
scoreboard players add @p[predicate=skyblock:explosive_bow] damage 20

execute as @e[tag=explosive_shot_radius] run execute store result score @s health run data get entity @s Health
execute as @e[tag=explosive_shot_radius] run execute if score @s health < @p[predicate=skyblock:explosive_bow] damage run kill @s
execute as @e[tag=explosive_shot_radius] run scoreboard players operation @s health -= @p[predicate=skyblock:explosive_bow] damage
execute as @e[tag=explosive_shot_radius] run execute store result entity @s Health float 1 run scoreboard players get @s health

effect clear @e[tag=explosive_shot] nausea
tag @e[tag=explosive_shot_radius] remove explosive_shot_radius
kill @e[type=armor_stand,tag=explosive_shot,limit=1,sort=nearest]
tag @e[tag=explosive_shot,limit=1,sort=nearest] remove explosive_shot

function skyblock:abilities/reset_instant