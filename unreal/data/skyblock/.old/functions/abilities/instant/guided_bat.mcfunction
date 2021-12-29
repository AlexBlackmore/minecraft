execute at @e[tag=guided_bat_projectile] run execute as @e[tag=guided_bat_projectile] run execute unless entity @e[tag=shot,distance=0..1] run tag @s add guided_bat_damage
tag @e[tag=guided_bat_damage] remove guided_bat_projectile
execute at @e[tag=guided_bat_damage] run execute as @e[tag=guided_bat_damage] run tp @s @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player]


execute at @e[tag=guided_bat_damage] run tag @e[type=#skyblock:hostile,distance=0..6] add guided_bat_target
execute at @e[tag=guided_bat_damage] run tag @p[nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] add guided_bat_player
execute at @e[tag=guided_bat_damage] run particle minecraft:explosion_emitter
effect give @e[tag=guided_bat_target] glowing

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=guided_bat_player] run execute store result score @s xp_level run data get entity @s XpLevel 0.2
scoreboard players add @p[tag=guided_bat_player] xp_level 100
scoreboard players set @p[tag=guided_bat_player] damage 400
execute as @p[tag=guided_bat_player] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=guided_bat_target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=guided_bat_target] run execute if score @s health < @p[tag=guided_bat_player] damage run kill @s
execute as @e[tag=guided_bat_target] run scoreboard players operation @s health -= @p[tag=guided_bat_player] damage
execute as @e[tag=guided_bat_target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=guided_bat_player] xp_level 100
execute as @p[tag=guided_bat_player] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=guided_bat_player] ["",{"text":"[Guided Bat: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute at @p[tag=guided_bat_player] run playsound minecraft:entity.generic.explode player @p
kill @e[tag=guided_bat_damage]

tag @e[tag=guided_bat_target] remove guided_bat_target
tag @p[tag=guided_bat_player] remove guided_bat_player
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health

execute if entity @e[tag=guided_bat_projectile] run schedule function skyblock:abilities/instant/guided_bat 1t replace 
