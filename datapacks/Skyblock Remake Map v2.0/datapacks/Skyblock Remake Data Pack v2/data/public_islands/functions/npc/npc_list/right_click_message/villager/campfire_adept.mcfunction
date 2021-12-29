tellraw @s [{"text":"[Campfire Adept]","color":"gold"},{"text":": Some call us the campfire cult!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
