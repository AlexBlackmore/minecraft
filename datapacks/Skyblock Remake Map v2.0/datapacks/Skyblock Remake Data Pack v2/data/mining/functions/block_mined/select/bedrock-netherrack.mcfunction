execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:netherrack}}}] at @s run function mining:block_mined/set/bedrock-netherrack
scoreboard players reset @s M_netherrack