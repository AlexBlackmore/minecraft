execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^1 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^2 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^3 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^4 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^5 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^6 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^7 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^8 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^9 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^10 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^11 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^12 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^13 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^14 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^15 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^16 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^17 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^18 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^19 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^20 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^21 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^22 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^23 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^24 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^25 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^26 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^27 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^28 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^29 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^30 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^31 {NoGravity:true,Tags:["terrain_toss"]}
execute at @p[predicate=skyblock:yeti_sword] run summon minecraft:armor_stand ^ ^0.5 ^32 {NoGravity:true,Tags:["terrain_toss"]}

execute at @e[tag=terrain_toss] run tag @e[type=!player,distance=0..1] add terrain_toss_mob

execute at @p[predicate=skyblock:yeti_sword] run playsound minecraft:entity.generic.explode player @p
execute at @e[tag=terrain_toss] run particle minecraft:explosion ~ ~ ~

execute store result score @p[predicate=skyblock:yeti_sword] damage run data get entity @p[predicate=skyblock:yeti_sword] XpLevel 3
scoreboard players add @p[predicate=skyblock:yeti_sword] damage 1000
scoreboard players set @p[predicate=skyblock:yeti_sword] attack_damage 3000
scoreboard players operation @p[predicate=skyblock:yeti_sword] damage *= @p[predicate=skyblock:yeti_sword] attack_damage

execute as @e[tag=terrain_toss_mob] run execute store result score @s health run data get entity @s Health 1000
execute as @e[tag=terrain_toss_mob] run execute if score @s health < @p[predicate=skyblock:yeti_sword] damage run kill @s
execute as @e[tag=terrain_toss_mob] run scoreboard players operation @s health -= @p[predicate=skyblock:yeti_sword] damage
execute as @e[tag=terrain_toss_mob] run execute store result entity @s Health float 0.001 run scoreboard players get @s health

xp add @p[predicate=skyblock:yeti_sword] -250 points
effect give @p[predicate=skyblock:yeti_sword] hunger 1
kill @e[tag=terrain_toss]
tag @e[tag=terrain_toss_mob] remove terrain_toss_mob

function skyblock:abilities/reset_instant
