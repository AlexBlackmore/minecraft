execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:bedrock}}}] at @s run function mining:block_mined/set/bedrock
scoreboard players reset @s M_cobblestone