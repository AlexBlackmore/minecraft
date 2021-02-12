summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=1,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Elle of the Nether","color":"red"},{"text":": I don't know what I would do without my Fire Resistance Potions. Probably burn.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Elle of the Nether","color":"red"},{"text":": Many of the creatures on this island drop useful brewing ingredients.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tag @s add NPC_1line
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 16
function public_islands:npc/right_clicking/right_click
