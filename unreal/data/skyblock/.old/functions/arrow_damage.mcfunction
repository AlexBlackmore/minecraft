tag @p[advancements={skyblock:commands/using_bow=false}] add bow
advancement revoke @p[tag=bow] only skyblock:commands/using_bow

scoreboard objectives add owner dummy "Owner"
execute as @e[type=#minecraft:arrows,tag=!shot] run execute store result score @s owner run data get entity @s Owner[0]
execute as @p[tag=bow] run execute store result score @s owner run data get entity @s UUID[0]
execute as @e[type=#minecraft:arrows,tag=!shot,nbt={inGround:0b}] run execute if score @s owner = @p[tag=bow] owner run tag @s add calc
scoreboard objectives remove owner

execute unless entity @e[tag=calc] run tag @p[tag=bow] remove bow

scoreboard objectives add color dummy "Potion Color"
execute as @e[tag=calc] run execute store result score @s color run data get entity @s Color
execute if entity @e[tag=calc,scores={color=5635925}] run tag @p[tag=bow] add bouncy_arrow
execute if entity @e[tag=calc,scores={color=5636095}] run tag @p[tag=bow] add icy_arrow
execute if entity @e[tag=calc,scores={color=4738376}] run tag @p[tag=bow] add armorshred_arrow
execute if entity @e[tag=calc,scores={color=16777215}] run tag @p[tag=bow] add glue_arrow
execute if entity @e[tag=calc,scores={color=11184811}] run tag @p[tag=bow] add nansorb_arrow

scoreboard objectives add damage dummy "Damage"
execute as @e[tag=calc] run execute store result score @s damage run data get entity @s damage
execute as @p[tag=bow] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get

execute as @e[tag=calc] run scoreboard players operation @s damage += @p[tag=bow] attack_damage

execute as @e[tag=calc,scores={color=11184810}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=16777045}] run scoreboard players add @s damage 2
execute as @e[tag=calc,scores={color=16733525}] run scoreboard players add @s damage 3
execute as @e[tag=calc,scores={color=43520}] run scoreboard players add @s damage 4
execute as @e[tag=calc,scores={color=5635925}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=5636095}] run scoreboard players add @s damage 5
execute as @e[tag=calc,scores={color=4738376}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=16777215}] run scoreboard players add @s damage 3

execute if entity @p[tag=bow,predicate=skyblock:sneaking,level=1..,nbt={SelectedItem:{tag:{Name:"End Stone Bow"}}}] run function skyblock:abilities/instant/extreme_focus




execute as @e[tag=calc] run execute store result entity @s damage double 1 run scoreboard players get @s damage
scoreboard players operation @p[tag=bow] damage = @e[tag=calc,limit=1,sort=nearest] damage
tellraw @p[tag=bow] ["",{"text":"[Arrow: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute at @e[tag=calc,scores={color=1}] run summon armor_stand ^ ^ ^1 {Tags:["projectile","explosive_arrow"],Marker:true,Invulnerable:true,Invisible:false}
execute at @e[tag=calc] run execute if entity @p[tag=bow,predicate=skyblock:ender_warp] run summon armor_stand ^ ^ ^1 {Tags:["projectile","ender_warp"],Marker:true,Invulnerable:true,Invisible:false}
execute at @e[tag=calc] run execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Explosive Bow"}}}] run summon armor_stand ^ ^ ^1 {Tags:["projectile","explosive_shot"],Marker:true,Invulnerable:true,Invisible:false}
scoreboard objectives remove color


execute at @e[tag=projectile,type=armor_stand] run tag @e[tag=calc,limit=1,sort=nearest] add projectile
execute if entity @p[tag=bow] run execute if entity @e[tag=projectile] run schedule function skyblock:projectile_follow 1t replace

execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Sniper Bow"}}}] run execute as @e[tag=calc] run data merge entity @s {NoGravity:true}

tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Terminator"}}}] run function skyblock:abilities/terminator
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Runaan's Bow"}}}] run function skyblock:abilities/instant/triple_shot
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] run function skyblock:abilities/soulstealer_bow
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Hurricane Bow"}}}] run function skyblock:abilities/instant/tempest


scoreboard objectives remove damage
tag @p[tag=bow] remove bow