tellraw @s [{"text":"[NPC] Stella","color":"yellow"},{"text":": At any time you can create a Co-op with your friends!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
