tellraw @s [{"text":"[NPC] Liam","color":"yellow"},{"text":": Anyone will be able to rent them, players, co-ops, even Guilds!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
