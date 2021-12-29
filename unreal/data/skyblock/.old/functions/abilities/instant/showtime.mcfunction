execute at @e[tag=showtime_projectile] run execute as @e[tag=showtime_projectile] run execute unless entity @e[tag=shot,distance=0..1] run tag @s add showtime_damage
tag @e[tag=showtime_damage] remove showtime_projectile
execute at @e[tag=showtime_damage] run execute as @e[tag=showtime_damage] run tp @s @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player]


execute at @e[tag=showtime_damage] run tag @e[type=#skyblock:hostile,distance=0..2] add showtime_target
execute at @e[tag=showtime_damage] run tag @p[nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] add showtime_player
effect give @e[tag=showtime_target] glowing 1

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=showtime_player] run execute store result score @s xp_level run data get entity @s XpLevel 0.2
scoreboard players add @p[tag=showtime_player] xp_level 100
scoreboard players set @p[tag=showtime_player] damage 200
execute as @p[tag=showtime_player] run scoreboard players operation @s damage *= @s xp_level

execute as @e[tag=showtime_target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=showtime_target] run execute if score @s health < @p[tag=showtime_player] damage run kill @s
execute as @e[tag=showtime_target] run scoreboard players operation @s health -= @p[tag=showtime_player] damage
execute as @e[tag=showtime_target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=showtime_player] xp_level 100
execute as @p[tag=showtime_player] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=showtime_player] ["",{"text":"[Showtime: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]


execute at @e[tag=showtime_damage,limit=1,sort=nearest] run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{Count:1b,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;0,0,0,0],Flicker:1b,Type:0b}]}}}}

scoreboard objectives add color dummy "Color"
scoreboard players set @e[type=firework_rocket,limit=1,sort=nearest] xp_level 16777215

execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result score @s color run data get entity @s UUID[0]
execute as @e[type=firework_rocket,limit=1,sort=nearest] run scoreboard players operation @s color %= @s xp_level
execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] int 1 run scoreboard players get @s color

execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result score @s color run data get entity @s UUID[1]
execute as @e[type=firework_rocket,limit=1,sort=nearest] run scoreboard players operation @s color %= @s xp_level
execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[1] int 1 run scoreboard players get @s color

execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result score @s color run data get entity @s UUID[2]
execute as @e[type=firework_rocket,limit=1,sort=nearest] run scoreboard players operation @s color %= @s xp_level
execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[2] int 1 run scoreboard players get @s color

execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result score @s color run data get entity @s UUID[3]
execute as @e[type=firework_rocket,limit=1,sort=nearest] run scoreboard players operation @s color %= @s xp_level
execute as @e[type=firework_rocket,limit=1,sort=nearest] run execute store result entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[3] int 1 run scoreboard players get @s color

scoreboard objectives remove color

kill @e[tag=showtime_damage]

tag @e[tag=showtime_target] remove showtime_target
tag @p[tag=showtime_player] remove showtime_player
scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health

execute if entity @e[tag=showtime_projectile] run schedule function skyblock:abilities/instant/showtime 1t replace 
