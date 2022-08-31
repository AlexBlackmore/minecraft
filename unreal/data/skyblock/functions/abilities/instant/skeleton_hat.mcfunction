execute at @e[tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Potion:"harming",Radius:8}

execute store result score @s dummy run data get entity @s XpLevel
scoreboard players add @s dummy 100
scoreboard players set @s damage 10
scoreboard players operation @s damage *= @s dummy

execute at @e[tag=target] run scoreboard players operation @e[type=#minecraft:monster,distance=0..8] damage += @s damage
tag @e[tag=!target,scores={damage=1..}] add target

scoreboard players set @s dummy 100
scoreboard players operation @s damage /= @s dummy
tellraw @s ["",{"text":"[Skeleton Hat: Dealt ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
