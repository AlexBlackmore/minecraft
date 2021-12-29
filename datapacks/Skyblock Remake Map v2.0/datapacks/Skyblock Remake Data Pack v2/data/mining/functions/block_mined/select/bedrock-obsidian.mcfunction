execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:bedrock}}}] at @s run function mining:block_mined/set/bedrock
execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:stone}}}] at @s run function mining:block_mined/set/stone
scoreboard players reset @s M_obsidian