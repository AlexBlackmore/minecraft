tellraw @s [{"text":"[NPC] Vex","color":"yellow"},{"text":": You can disable Player Trading in your ","color":"white"},{"text":"Skyblock","color":"aqua"},{"text":" Settings!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 102
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
