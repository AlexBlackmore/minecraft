tellraw @s [{"text":"[Campfire Initiate]","color":"gold"},{"text":": Prove yourself in the ","color":"white"},{"text":"Trials of Fire","color":"red"},{"text":"!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
