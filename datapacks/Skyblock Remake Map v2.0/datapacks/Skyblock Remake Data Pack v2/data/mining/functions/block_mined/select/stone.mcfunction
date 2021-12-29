execute as @e[type=minecraft:item,nbt={Item:{tag:{mining:stone}}}] at @s run function mining:block_mined/set/stone
scoreboard players reset @s M_coal_ore
scoreboard players reset @s M_diamond_block
scoreboard players reset @s M_diamond_ore
scoreboard players reset @s M_emerald_ore
scoreboard players reset @s M_gold_ore
scoreboard players reset @s M_iron_ore
scoreboard players reset @s M_lapis_ore
scoreboard players reset @s M_redstone_ore