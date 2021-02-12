tellraw @s [{"text":"[NPC] Event Master","color":"yellow"},{"text":": Welcome to the Colosseum!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 21
function public_islands:npc/right_clicking/right_click
