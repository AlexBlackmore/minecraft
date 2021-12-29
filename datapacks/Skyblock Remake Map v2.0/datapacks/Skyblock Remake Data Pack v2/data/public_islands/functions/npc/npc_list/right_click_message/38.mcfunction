tellraw @s [{"text":"[NPC] Clerk Seraphine","color":"yellow"},{"text":": Welcome to the Community Center!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 2 1
tag @s add NPC_3lines
scoreboard players set @s NPC_Skin 38
function public_islands:npc/right_clicking/right_click
