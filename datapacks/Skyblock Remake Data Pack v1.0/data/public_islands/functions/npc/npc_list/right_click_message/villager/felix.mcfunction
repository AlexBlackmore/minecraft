summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=1,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] Felix","color":"yellow"},{"text":": You can upgrade your ","color":"white"},{"text":"Ender Chest","color":"green"},{"text":" storage through your ","color":"white"},{"text":"Obsidian Collection","color":"green"},{"text":".You can also unlock bonus pages via the ","color":"white"},{"text":"community shop","color":"aqua"},{"text":" in the hub! ","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] Felix","color":"yellow"},{"text":": You can access your ","color":"white"},{"text":"Ender Chest","color":"green"},{"text":" in your ","color":"white"},{"text":"Skyblock","color":"green"},{"text":" Menu.","color":"white"}]
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 1 1
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tag @s add NPC_1line
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 107
tag @s add TalkedToVillager
function public_islands:npc/right_clicking/villager/right_click
