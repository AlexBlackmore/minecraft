scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 15
function skyblock:random/range_lcg
execute if score out RandMath matches 0 run data merge entity @s {Item:{id:"minecraft:white_wool"}}
execute if score out RandMath matches 1 run data merge entity @s {Item:{id:"minecraft:orange_wool"}}
execute if score out RandMath matches 2 run data merge entity @s {Item:{id:"minecraft:magenta_wool"}}
execute if score out RandMath matches 3 run data merge entity @s {Item:{id:"minecraft:light_blue_wool"}}
execute if score out RandMath matches 4 run data merge entity @s {Item:{id:"minecraft:yellow_wool"}}
execute if score out RandMath matches 5 run data merge entity @s {Item:{id:"minecraft:lime_wool"}}
execute if score out RandMath matches 6 run data merge entity @s {Item:{id:"minecraft:pink_wool"}}
execute if score out RandMath matches 7 run data merge entity @s {Item:{id:"minecraft:gray_wool"}}
execute if score out RandMath matches 8 run data merge entity @s {Item:{id:"minecraft:light_gray_wool"}}
execute if score out RandMath matches 9 run data merge entity @s {Item:{id:"minecraft:cyan_wool"}}
execute if score out RandMath matches 10 run data merge entity @s {Item:{id:"minecraft:purple_wool"}}
execute if score out RandMath matches 11 run data merge entity @s {Item:{id:"minecraft:blue_wool"}}
execute if score out RandMath matches 12 run data merge entity @s {Item:{id:"minecraft:brown_wool"}}
execute if score out RandMath matches 13 run data merge entity @s {Item:{id:"minecraft:green_wool"}}
execute if score out RandMath matches 14 run data merge entity @s {Item:{id:"minecraft:red_wool"}}
execute if score out RandMath matches 15 run data merge entity @s {Item:{id:"minecraft:black_wool"}}