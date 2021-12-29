tellraw @s [{"text":"[NPC] Lucius","color":"yellow"},{"text":": Psst! Listen here!","color":"white"}]
execute at @s run playsound entity.villager.trade player @s ~ ~ ~ 2 0.65 1
function public_islands:npc/right_clicking/right_click
