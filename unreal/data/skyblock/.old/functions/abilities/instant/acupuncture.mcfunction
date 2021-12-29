execute at @p[tag=ability] run tag @e[type=!player,distance=0..18,limit=9] add acupuncture

scoreboard objectives add xp_level dummy "XpLevel"
scoreboard objectives add damage dummy "Dummy"
scoreboard objectives add health dummy "Health"

execute as @p[tag=ability] run execute store result score @s xp_level run data get entity @s XpLevel
scoreboard players add @p[tag=ability] xp_level 100
scoreboard players set @p[tag=ability] damage 600
execute as @p[tag=ability] run scoreboard players operation @s damage *= @s xp_level

effect give @e[tag=acupuncture] glowing
execute at @e[tag=acupuncture] run particle minecraft:crit ~ ~ ~ 0 1 0 1 10
effect give @e[tag=acupuncture] poison 10 5

execute as @e[tag=acupuncture] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=acupuncture] run execute if score @s health < @p[tag=ability] damage run kill @s
execute as @e[tag=acupuncture] run scoreboard players operation @s health -= @p[tag=ability] damage
execute as @e[tag=acupuncture] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

xp add @p[tag=ability] -200 points
effect give @p[tag=ability] hunger 5
execute at @p[tag=ability] run playsound minecraft:entity.pufferfish.blow_up player @s

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=ability] divisor 100
execute as @p[tag=ability] run scoreboard players operation @s damage /= @s divisor
tellraw @p[tag=ability] ["",{"text":"ACUPUNCTURE! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"damage"},"color":"red"},{"text":" damage","color":"red"}]
scoreboard objectives remove divisor

tag @e[tag=acupuncture] remove acupuncture
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health
