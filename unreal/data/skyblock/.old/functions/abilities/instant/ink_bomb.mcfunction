execute at @e[tag=ink_bomb_projectile] run execute as @e[tag=ink_bomb_projectile] run execute unless entity @e[tag=shot,distance=0..1] run tag @s add ink_bomb_damage
tag @e[tag=ink_bomb_damage] remove ink_bomb_projectile
execute at @e[tag=ink_bomb_damage] run execute as @e[tag=ink_bomb_damage] run tp @s @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player]


execute at @e[tag=ink_bomb_damage] run tag @e[type=#minecraft:hostile,distance=0..1] add ink_bomb_target
execute at @e[tag=ink_bomb_damage] run tag @p[nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] add ink_bomb_player
effect give @e[tag=ink_bomb_target] glowing 1
effect give @e[tag=ink_bomb_target] blindness 5
execute at @e[tag=ink_bomb_damage] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 100

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=ink_bomb_player] run execute store result score @s xp_level run data get entity @s XpLevel
scoreboard players add @p[tag=ink_bomb_player] xp_level 100
scoreboard players set @p[tag=ink_bomb_player] damage 400
execute as @p[tag=ink_bomb_player] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=ink_bomb_target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=ink_bomb_target] run execute if score @s health < @p[tag=ink_bomb_player] damage run kill @s
execute as @e[tag=ink_bomb_target] run scoreboard players operation @s health -= @p[tag=ink_bomb_player] damage
execute as @e[tag=ink_bomb_target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=ink_bomb_player] xp_level 100
execute as @p[tag=ink_bomb_player] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=ink_bomb_player] ["",{"text":"[Ink Bomb: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute at @p[tag=ink_bomb_player] run playsound minecraft:entity.squid.squirt player @p
kill @e[tag=ink_bomb_damage]

tag @e[tag=ink_bomb_target] remove ink_bomb_target
tag @p[tag=ink_bomb_player] remove ink_bomb_player
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health

execute if entity @e[tag=ink_bomb_projectile] run schedule function skyblock:abilities/instant/ink_bomb 1t replace 
