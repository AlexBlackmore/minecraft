tag @e[predicate=skyblock:nausea1] add ender_warp
execute at @e[type=armor_stand,tag=projectile] run execute at @e[type=!armor_stand,distance=0..3] run tp @e[type=armor_stand,tag=projectile,limit=1,sort=nearest] ~ ~ ~
execute at @e[type=armor_stand,tag=ender_warp] run tag @e[distance=0..8,type=!player] add ender_warp_radius

execute as @e[tag=ender_warp_radius] run execute store result score @s health run data get entity @s Health
execute as @e[tag=ender_warp_radius] run execute store result score @s damage run data get entity @s Health 0.1
execute as @e[tag=ender_warp_radius] run execute if score @s health < @s damage run kill @s
execute as @e[tag=ender_warp_radius] run scoreboard players operation @s health -= @s damage
execute as @e[tag=ender_warp_radius] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute at @e[limit=1,tag=ender_warp] run tp @p[predicate=skyblock:ender_bow] ~ ~ ~
execute at @e[predicate=skyblock:ender_bow] run playsound minecraft:entity.enderman.teleport player @p[predicate=skyblock:ender_bow]
xp add @p[predicate=skyblock:ender_bow] -50 points
effect give @p[predicate=skyblock:ender_bow] hunger 45

effect clear @e[tag=ender_warp_radius] nausea
tag @e[tag=ender_warp_radius] remove ender_warp_radius
kill @e[type=armor_stand,tag=ender_warp,limit=1,sort=nearest]
tag @e[tag=ender_warp] remove ender_warp

function skyblock:abilities/reset_instant