tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Minikloon","color":"red"},{"text":": Don't forget to report bugs on the forums!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 70
function public_islands:npc/right_clicking/right_click
