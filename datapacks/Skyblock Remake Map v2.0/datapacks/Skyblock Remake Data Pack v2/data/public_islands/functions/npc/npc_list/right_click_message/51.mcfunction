tellraw @s [{"text":"[NPC] Taylor","color":"yellow"},{"text":": Hello!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 51
function public_islands:npc/right_clicking/right_click
