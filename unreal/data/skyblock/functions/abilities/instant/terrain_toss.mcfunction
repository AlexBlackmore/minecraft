tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Yeti Sword\",\"italic\":false,\"color\":\"gold\"}"}}}}] add yeti_sword

execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^2 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^3 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^4 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^5 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^6 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^7 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^8 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^9 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^10 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^11 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^12 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^13 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^14 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^15 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^16 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^17 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^18 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^19 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^20 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^21 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^22 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^23 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^24 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^25 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^26 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^27 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^28 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^29 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^30 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^31 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}
execute at @p[tag=yeti_sword] run summon minecraft:falling_block ^ ^0.5 ^32 {BlockState:{Name:"minecraft:bedrock"},Tags:["terrain_toss"]}

execute at @e[tag=terrain_toss] run tag @e[type=!player,distance=0..2] add terrain_toss_mob

playsound minecraft:block.stone.break player @p[tag=yeti_sword]
/playsound minecraft:block.grass.break player @p[tag=yeti_sword]

execute store result score @p[tag=yeti_sword] damage run data get entity @p[tag=yeti_sword] XpLevel 0.3
scoreboard players add @p[tag=yeti_sword] damage 100
scoreboard players set @p[tag=yeti_sword] attack_damage 3000
scoreboard players operation @p[tag=yeti_sword] damage *= @p[tag=yeti_sword] attack_damage

execute as @e[tag=terrain_toss_mob] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=terrain_toss_mob] run execute if score @s health < @p[tag=yeti_sword] damage run kill @s
execute as @e[tag=terrain_toss_mob] run scoreboard players operation @s health -= @p[tag=yeti_sword] damage
execute as @e[tag=terrain_toss_mob] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

xp add @p[tag=yeti_sword] -250 points
effect give @p[tag=yeti_sword] hunger 1
kill @e[tag=terrain_toss]
tag @e[tag=terrain_toss_mob] remove terrain_toss_mob
tag @p[tag=yeti_sword] remove yeti_sword

function skyblock:abilities/reset_instant
