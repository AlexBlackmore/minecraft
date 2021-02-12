tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Ryan","color":"gold"},{"text":": You completed all of the ","color":"white"},{"text":"Trials of Fire","color":"red"},{"text":"!\n","color":"white"},{"text":"Congratulations","color":"green"},{"text":"!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
function public_islands:npc/right_clicking/right_click
