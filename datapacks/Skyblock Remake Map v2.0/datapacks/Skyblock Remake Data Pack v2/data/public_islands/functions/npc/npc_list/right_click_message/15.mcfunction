tellraw @s [{"text":"[NPC] Dusk","color":"yellow"},{"text":": You can apply runes to weapons and armor with the Rune Pedestal behind me.","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 15
function public_islands:npc/right_clicking/right_click
