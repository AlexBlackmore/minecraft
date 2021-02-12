tellraw @s [{"text":"[NPC] Lynn","color":"yellow"},{"text":": If you ever get lost during a quest, open your ","color":"white"},{"text":"Quest Log","color":"aqua"},{"text":" in your ","color":"white"},{"text":"Skyblock Menu","color":"green"},{"text":"!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
