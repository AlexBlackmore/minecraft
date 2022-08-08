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


execute at @s run bossbar set minecraft:mob name {"selector":"@e[tag=target,limit=1,sort=nearest]"}

execute as @e[tag=target] store result score @s health run attribute @s minecraft:generic.max_health get
execute at @s store result bossbar minecraft:mob max run scoreboard players get @e[tag=target,limit=1,sort=nearest] health
execute if entity @e[tag=target,limit=1,sort=nearest,scores={health=..299}] run bossbar set minecraft:mob style progress
execute if entity @e[tag=target,limit=1,sort=nearest,scores={health=300..499}] run bossbar set minecraft:mob style notched_6
execute if entity @e[tag=target,limit=1,sort=nearest,scores={health=500..599}] run bossbar set minecraft:mob style notched_10
execute if entity @e[tag=target,limit=1,sort=nearest,scores={health=600..999}] run bossbar set minecraft:mob style notched_12
execute if entity @e[tag=target,limit=1,sort=nearest,scores={health=1000..}] run bossbar set minecraft:mob style notched_20

execute at @s store result score @e[tag=target,limit=1,sort=nearest] absorption run data get entity @e[tag=target,limit=1,sort=nearest] AbsorptionAmount
execute as @s if score @e[tag=target,limit=1,sort=nearest] absorption matches 1.. run bossbar set minecraft:mob color yellow
execute as @s if score @e[tag=target,limit=1,sort=nearest] absorption matches 0 run bossbar set minecraft:mob color red

execute as @e[tag=target,limit=1,sort=nearest] store result score @s dummy run data get entity @s Health
execute as @e[tag=target,limit=1,sort=nearest] run scoreboard players operation @s absorption += @s dummy
execute as @e[tag=target,limit=1,sort=nearest] run scoreboard players operation @s absorption %= @s health
execute at @s store result bossbar minecraft:mob value run scoreboard players get @e[tag=target,limit=1,sort=nearest] absorption

execute as @s if entity @e[tag=target] run bossbar set minecraft:mob visible true
execute as @s unless entity @e[tag=target] run bossbar set minecraft:mob visible false
execute if entity @e[tag=target] run schedule function skyblock:hide_bossbar 8s replace 