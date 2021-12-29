#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#detect stop/detect damage
execute as @e[tag=flower_of_truth_2] at @s if entity @e[distance=..7,type=!item,tag=!flower_of_truth_dir_2,type=!player,tag=!NPC,type=!#stats:show_hp,tag=!been_target] run function items:item_abilities/right_click/heat_seeking_rose/ricochet
execute as @e[tag=flower_of_truth_2] at @s run function items:item_abilities/right_click/heat_seeking_rose/look_for_damage

#stop ricochet
execute as @e[tag=flower_of_truth_2,tag=!flower_found_target] at @s anchored eyes unless block ~ ~1 ~ air run function items:item_abilities/right_click/heat_seeking_rose/reset

#move sword
execute as @e[tag=flower_of_truth_2,tag=flower_of_truth_done,limit=1] at @s run tp @s ^ ^ ^-1 facing entity @e[tag=flower_of_truth_dir_2,limit=1] 
execute as @e[tag=flower_of_truth_2,tag=flower_found_target,limit=1] at @s run tp @s ^ ^ ^0.5

execute as @e[tag=flower_of_truth_2] run scoreboard players add @s Temp 1
execute as @e[tag=flower_of_truth_2] if score @s Temp matches 60.. run function items:item_abilities/right_click/heat_seeking_rose/reset