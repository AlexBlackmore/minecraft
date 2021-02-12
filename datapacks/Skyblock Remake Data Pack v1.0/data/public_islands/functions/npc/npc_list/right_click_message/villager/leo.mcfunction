summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text3"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=2,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] Leo","color":"yellow"},{"text":": Visit resource areas like the ","color":"white"},{"text":"Farm","color":"aqua"},{"text":", ","color":"white"},{"text":"Forest","color":"aqua"},{"text":", and ","color":"white"},{"text":"Coal Mine","color":"aqua"},{"text":" to gather items for your Collections!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] Leo","color":"yellow"},{"text":": The world is full of resources. Explore the island to discover new items that you can collect!","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tellraw @s [{"text":"[NPC] Leo","color":"yellow"},{"text":": You can unlock ","color":"white"},{"text":"Leaflet Armor","color":"green"},{"text":" by progressing through your ","color":"white"},{"text":"Oak Log Collection","color":"green"},{"text":".","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
execute positioned ~ ~-2 ~ unless entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tag @s add NPC_1line
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tag @s add NPC_3lines
scoreboard players set @s NPC_Skin 101
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
