execute at @e[tag=ice_bolt_projectile] run execute as @e[tag=ice_bolt_projectile] run execute unless entity @e[tag=shot,distance=0..1] run tag @s add ice_bolt_damage
tag @e[tag=ice_bolt_damage] remove ice_bolt_projectile
execute at @e[tag=ice_bolt_damage] run execute as @e[tag=ice_bolt_damage] run tp @s @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player]


execute at @e[tag=ice_bolt_damage] run tag @e[type=#skyblock:hostile,distance=0..1] add ice_bolt_target
execute at @e[tag=ice_bolt_damage] run tag @p[nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] add ice_bolt_player
effect give @e[tag=ice_bolt_target] glowing 1

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=ice_bolt_player] run execute store result score @s xp_level run data get entity @s XpLevel 0.3
scoreboard players add @p[tag=ice_bolt_player] xp_level 100
scoreboard players set @p[tag=ice_bolt_player] damage 200
execute as @p[tag=ice_bolt_player] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=ice_bolt_target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=ice_bolt_target] run execute if score @s health < @p[tag=ice_bolt_player] damage run kill @s
execute as @e[tag=ice_bolt_target] run scoreboard players operation @s health -= @p[tag=ice_bolt_player] damage
execute as @e[tag=ice_bolt_target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=ice_bolt_player] xp_level 100
execute as @p[tag=ice_bolt_player] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=ice_bolt_player] ["",{"text":"[Ice Bolt: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute at @p[tag=ice_bolt_player] run playsound minecraft:block.glass.break player @p
kill @e[tag=ice_bolt_damage]

tag @e[tag=ice_bolt_target] remove ice_bolt_target
tag @p[tag=ice_bolt_player] remove ice_bolt_player
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health

execute if entity @e[tag=ice_bolt_projectile] run schedule function skyblock:abilities/instant/ice_bolt 1t replace 
