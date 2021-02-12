summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text3"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text4"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text5"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text6"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text7"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=6,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": ","color":"white"},{"text":"✎ Intelligence","color":"aqua"},{"text":" increases your ","color":"white"},{"text":"Mana","color":"aqua"},{"text":" and your magic damage!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": Increasing your Enchanting and Alchemy Skill Levels will permanently boost your ","color":"white"},{"text":"✎ Intelligence","color":"aqua"},{"text":".","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": Increasing your Combat Skill Level will permanently boost your ","color":"white"},{"text":"☣ Crit Chance","color":"blue"},{"text":".","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text4,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": The higher your ","color":"white"},{"text":"❤ Health","color":"red"},{"text":" stat, the faster your health will regenerate!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text5,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": Increasing your Mining Skill Level will permanently boost your ","color":"white"},{"text":"❈ Defense","color":"green"},{"text":".","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text6,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": Increasing your Farming and Fishing Skill Levels will permanently boost your ","color":"white"},{"text":"❤ Health","color":"red"},{"text":".","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text7,distance=..0.1] run tellraw @s [{"text":"[NPC] Jack","color":"yellow"},{"text":": Increasing your Foraging Skill Level will permanently boost your ","color":"white"},{"text":"❁ Strength","color":"red"},{"text":".","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
tag @s add NPC_1line
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
