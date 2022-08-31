execute at @s run summon armor_stand ^-1 ^1 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^1 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^1 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^2 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^2 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^2 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^3 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^3 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^-1 ^3 ^3 {Tags:["mineral_armor"],Invisible:true}

execute at @s run summon armor_stand ^ ^1 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^1 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^1 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^2 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^2 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^2 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^3 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^3 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^ ^3 ^3 {Tags:["mineral_armor"],Invisible:true}

execute at @s run summon armor_stand ^1 ^1 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^1 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^1 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^2 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^2 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^2 ^3 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^3 ^1 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^3 ^2 {Tags:["mineral_armor"],Invisible:true}
execute at @s run summon armor_stand ^1 ^3 ^3 {Tags:["mineral_armor"],Invisible:true}

execute as @e[tag=mineral_armor] at @s unless block ~ ~ ~ stone unless block ~ ~ ~ netherrack unless block ~ ~ ~ end_stone run kill @s
execute as @s at @e[tag=mineral_armor] run setblock ~ ~ ~ air destroy
kill @e[tag=mineral_armor]