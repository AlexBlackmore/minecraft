summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=1,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Guber","color":"light_purple"},{"text":": It's a great day to go for a run!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Guber","color":"light_purple"},{"text":": You're always welcome to try the race again. Just run over the pressure plate to begin!","color":"white"}]
execute at @s run playsound entity.villager.trade player @s ~ ~ ~ 2 1.75 1
tag @s add NPC_1line
function public_islands:npc/right_clicking/right_click
