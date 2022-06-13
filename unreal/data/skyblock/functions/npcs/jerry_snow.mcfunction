tellraw @s[predicate=!skyblock:sneaking] ["",{"text":"<Jerry> It's the holiday season and that can only mean one thing... ","color":"white"},{"text":"Jerry's Workshop","color":"red"},{"text":" is under attack! Save the Jerrys' home and ensure all of Skyblock gets to receive their ","color":"white"},{"text":"Gifts","color":"green"},{"text":"! Sneak to warp to Jerry's Workshop!","color":"white"}]
execute as @s[predicate=skyblock:sneaking] run function skyblock:teleports/to_winter_island
advancement revoke @s only skyblock:commands/npcs/jerry_snow
