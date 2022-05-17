execute at @e[tag=dreadlord_projectile] run execute as @e[tag=dreadlord_projectile] run execute unless entity @e[tag=shot,distance=0..1] run tag @s add dreadlord_damage
tag @e[tag=dreadlord_damage] remove dreadlord_projectile
execute at @e[tag=dreadlord_damage] run execute as @e[tag=dreadlord_damage] run tp @s @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player]


execute at @e[tag=dreadlord_damage] run tag @e[type=#minecraft:hostile,distance=0..1] add dreadlord_target
execute at @e[tag=dreadlord_damage] run tag @p[nbt={SelectedItem:{tag:{Name:"Dreadlord Sword"}}}] add dreadlord_player
effect give @e[tag=dreadlord_target] glowing 1

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=dreadlord_player] run execute store result score @s xp_level run data get entity @s XpLevel 0.3
scoreboard players add @p[tag=dreadlord_player] xp_level 100
scoreboard players set @p[tag=dreadlord_player] damage 100
execute as @p[tag=dreadlord_player] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=dreadlord_target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=dreadlord_target] run execute if score @s health < @p[tag=dreadlord_player] damage run kill @s
execute as @e[tag=dreadlord_target] run scoreboard players operation @s health -= @p[tag=dreadlord_player] damage
execute as @e[tag=dreadlord_target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=dreadlord_player] xp_level 100
execute as @p[tag=dreadlord_player] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=dreadlord_player] ["",{"text":"[Dreadlord: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

kill @e[tag=dreadlord_damage]

tag @e[tag=dreadlord_target] remove dreadlord_target
tag @p[tag=dreadlord_player] remove dreadlord_player
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health

execute if entity @e[tag=dreadlord_projectile] run schedule function skyblock:abilities/instant/dreadlord 1t replace 
