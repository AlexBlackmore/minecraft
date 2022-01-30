scoreboard objectives add health dummy "Health"
scoreboard objectives add absorption dummy "Absorption"

execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=target] run execute store result score @s absorption run data get entity @s AbsorptionAmount 100
execute as @e[tag=target] run scoreboard players operation @s absorption += @s health
execute as @e[tag=target] run scoreboard players operation @s absorption -= @s damage


execute as @e[tag=target] run execute if score @s absorption <= @s health run scoreboard players operation @s health = @s absorption
execute as @e[tag=target] run execute if score @s absorption <= @s health run scoreboard players set @s absorption 0
execute as @e[tag=target] run execute if score @s absorption > @s health run scoreboard players operation @s absorption -= @s health

execute at @e[tag=target] run particle minecraft:crit ~ ~0.5 ~ 0 0 0 0.5 32

kill @e[tag=target,scores={health=..0}]
execute as @e[tag=target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health
execute as @e[tag=target] run execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get @s absorption

execute as @e[tag=target] run function cw_hp:hurt