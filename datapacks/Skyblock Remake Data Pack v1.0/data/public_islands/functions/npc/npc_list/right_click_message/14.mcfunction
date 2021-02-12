summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=1,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Donpireso","color":"red"},{"text":": Have you seen Arthur's Wheat Minion? Witchcraft, I say!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Donpireso","color":"red"},{"text":": I can hear that cow mooing all the way over here.","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tag @s add NPC_1line
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 14
function public_islands:npc/right_clicking/right_click
