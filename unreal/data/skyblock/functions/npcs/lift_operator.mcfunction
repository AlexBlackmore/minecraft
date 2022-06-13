execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=gunpowder_mines,distance=0..4] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Lift Operator","color":"aqua"},{"text":"> Hey Feller! I control this lift here behind me. Once you've explored an area I can give you a safe ride back there. Be careful not to fall down the shaft though, it's a long fall! Good luck on your adventures.","color":"white"}]
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=gunpowder_mines,distance=0..4] run function skyblock:teleports/to_lapis_quarry

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=lapis_quarry,distance=0..4] run function skyblock:teleports/to_gunpowder_mines
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=lapis_quarry,distance=0..4] run function skyblock:teleports/to_pigmens_den

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=pigmens_den,distance=0..4] run function skyblock:teleports/to_lapis_quarry
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=pigmens_den,distance=0..4] run function skyblock:teleports/to_slimehill

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=slimehill,distance=0..4] run function skyblock:teleports/to_pigmens_den
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=slimehill,distance=0..4] run function skyblock:teleports/to_diamond_reserve

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=diamond_reserve,distance=0..4] run function skyblock:teleports/to_slimehill
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=diamond_reserve,distance=0..4] run function skyblock:teleports/to_obsidian_sanctuary

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=obsidian_sanctuary,distance=0..4] run function skyblock:teleports/to_diamond_reserve
execute at @s[predicate=skyblock:sneaking] if entity @e[tag=lift_operator,tag=obsidian_sanctuary,distance=0..4] run function skyblock:teleports/to_dwarven_mines

execute at @s[predicate=!skyblock:sneaking] if entity @e[tag=lift_operator,tag=dwarven_mines,distance=0..4] run function skyblock:teleports/to_obsidian_sanctuary

playsound minecraft:entity.villager.yes player @s

advancement revoke @s only skyblock:commands/npcs/lift_operator