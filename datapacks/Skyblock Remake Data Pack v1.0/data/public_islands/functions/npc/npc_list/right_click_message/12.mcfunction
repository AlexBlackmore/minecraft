summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text3"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=2,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] Charlie","color":"yellow"},{"text":": Fine time to cut some wood!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] Charlie","color":"yellow"},{"text":": I'm quite forgetful, I tend to say the same thing over and over again.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tellraw @s [{"text":"[NPC] Charlie","color":"yellow"},{"text":": Hello!","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
function public_islands:npc/right_clicking/right_click
