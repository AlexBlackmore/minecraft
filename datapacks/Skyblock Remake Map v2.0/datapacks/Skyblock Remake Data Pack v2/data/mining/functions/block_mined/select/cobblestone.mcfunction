execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:cobblestone}}}] at @s run function mining:block_mined/set/cobblestone
scoreboard players reset @s M_stone