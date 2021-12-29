execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:end_stone}}}] at @s run function mining:block_mined/set/bedrock-end_stone
scoreboard players reset @s M_end_stone