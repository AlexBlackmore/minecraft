summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=1,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run function public_islands:npc/npc_list/right_click_message/villager/tom_1
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run function public_islands:npc/npc_list/right_click_message/villager/tom_2
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_2lines
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
