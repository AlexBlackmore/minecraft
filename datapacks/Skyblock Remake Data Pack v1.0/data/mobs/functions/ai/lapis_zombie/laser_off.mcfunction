## Random Chance at getting laser ##
scoreboard players set in RandMath 200
scoreboard players set in1 RandMath 300
function skyblock:random/range_lcg
scoreboard players operation @s LapisLaserTime = out RandMath

## remove sea lantern ##
data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:255}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:255}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:255}}},{id:"minecraft:blue_stained_glass",Count:1b}]}

## remove laser ##
execute as @e[tag=LapisLapisLaserTime,distance=..2] run function skyblock:kill