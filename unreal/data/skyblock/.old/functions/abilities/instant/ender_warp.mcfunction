execute at @e[tag=ender_warp,tag=target] run tp @p[tag=bonus_damage] ~ ~ ~
kill @e[tag=ender_warp,tag=target]
execute at @p[tag=bonus_damage] run tag @e[type=!player,distance=0..8] add ender_warp

scoreboard objectives add ender_warp dummy "Ender Warp Damage"

execute as @e[tag=ender_warp] run execute store result score @s health run data get entity @s Health
execute as @e[tag=ender_warp] run execute store result score @s ender_warp run data get entity @s Health 0.1
execute as @e[tag=ender_warp,type=#skyblock:hostile] run tellraw @p[tag=bonus_damage] ["",{"text":"[Ender Warp: +","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"ender_warp"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
execute as @e[tag=ender_warp] run execute if score @s health < @s ender_warp run kill @s
execute as @e[tag=ender_warp] run scoreboard players operation @s health -= @s ender_warp
execute as @e[tag=ender_warp] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute at @p[tag=bonus_damage] run playsound minecraft:entity.enderman.teleport player @p
effect give @p[tag=bonus_damage] hunger 45
xp add @p[tag=bonus_damage] -50 points
scoreboard objectives remove ender_warp

tag @e[tag=ender_warp] remove ender_warp