execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:netherrack}}}] at @s run function mining:block_mined/set/netherrack
scoreboard players reset @s M_quartz_ore