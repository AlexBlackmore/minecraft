execute at @e[tag=explosive_shot,tag=target] run tag @e[type=!player,tag=!target,distance=0..3] add explosive_shot

execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
tellraw @p[tag=bonus_damage] ["",{"text":"[Explosive Shot: ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

effect give @e[tag=explosive_shot] glowing 1
execute as @e[tag=explosive_shot] run execute store result score @s health run data get entity @s Health
execute as @e[tag=explosive_shot] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=explosive_shot] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=explosive_shot] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute at @e[tag=explosive_shot,tag=target] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10
execute at @e[tag=explosive_shot,tag=target] run playsound minecraft:entity.generic.explode ambient @a
kill @e[tag=explosive_shot,tag=target]
tag @e[tag=explosive_shot] remove explosive_shot