tag @p[tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Starlight Boots"}},{Slot:101b,tag:{Name:"Starlight Leggings"}},{Slot:102b,tag:{Name:"Starlight Chestplate"}},{Slot:103b,tag:{Name:"Starlight Helmet"}}]}] add starpower
execute at @p[tag=ability] run tag @e[type=!player,distance=0..3] add starfall
execute at @p[tag=starpower] run tag @e[type=!player,distance=0..4] add starfall

scoreboard objectives add xp_level dummy "XpLevel"
scoreboard objectives add damage dummy "Damage"
scoreboard objectives add health dummy "Health"

execute as @p[tag=ability] run execute store result score @s xp_level run data get entity @s XpLevel
scoreboard players add @p[tag=ability] xp_level 100
scoreboard players set @p[tag=ability] damage 10
execute as @p[tag=ability] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=starfall] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=starfall] run execute if score @s health < @p[tag=ability] damage run kill @s
execute as @e[tag=starfall] run scoreboard players operation @s health -= @p[tag=ability] damage
execute as @e[tag=starfall] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

effect give @e[tag=starfall] glowing 1
effect give @e[tag=starfall] wither 5 2
execute if entity @p[tag=starpower] run effect give @e[tag=starfall] wither 10 2

xp add @p[tag=ability] -120 points
effect give @p[tag=ability] hunger 2
execute at @p[tag=ability] run particle minecraft:firework ~ ~ ~ 3 3 3 0.01 1000
execute at @p[tag=ability] run playsound minecraft:entity.firework_rocket.launch player @p

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=ability] divisor 100
execute as @p[tag=ability] run scoreboard players operation @s damage /= @s divisor
tellraw @p[tag=ability] ["",{"text":"STARFALL! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"damage"},"color":"red"},{"text":" damage","color":"red"}]
scoreboard objectives remove divisor

tag @e[tag=starfall] remove starfall
tag @p[tag=starpower] remove starpower
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health
