execute at @p[tag=ability] run tag @e[type=!player,distance=0..5] add iron_punch

scoreboard objectives add xp_level dummy "XpLevel"
scoreboard objectives add damage dummy "Dummy"
scoreboard objectives add health dummy "Health"

execute as @p[tag=bility] run execute store result score @s xp_level run data get entity @s XpLevel
scoreboard players add @p[tag=ability] xp_level 100
scoreboard players set @p[tag=ability] damage 50
execute as @p[tag=ability] rim scoreboard players operation @s damage *= @s xp_level

effect give @e[tag=iron_punch] glowing 1

execute as @e[tag=iron_punch] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=iron_punch] run execute if score @s health < @p[tag=ability] damage run kill @s
execute as @e[tag=iron_punch] run scoreboard players operation @s health -= @p[tag=ability] damage
execute as @e[tag=iron_punch] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

xp add @p[tag=ability] -70 points
effect give @p[tag=ability] hunger 3
playsound minecraft:entity.iron_golem.damage player @p[tag=ability]

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=ability] divisor 100
execute as @p[tag=ability] run scoreboard players operation @s damage /= @s divisor
tellraw @p[tag=ability] ["",{"text":"IRON PUNCH! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"damage"},"color":"red"},{"text":" damage","color":"red"}]
scoreboard objectives remove divisor

tag @e[tag=iron_punch] remove iron_punch
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health