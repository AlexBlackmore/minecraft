summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text3"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=2,sort=random]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Pearl Dealer","color":"dark_purple"},{"text":": The items in my shop may be of help as you descend into the depths of The End.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Pearl Dealer","color":"dark_purple"},{"text":": The End has endless End Stone and Obsidian. You may find a special type of these resources deep in the caves.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tellraw @s [{"text":"[NPC] ","color":"yellow"},{"text":"Pearl Dealer","color":"dark_purple"},{"text":": Ender Pearls attract the attention of Endermen, but ","color":"white"},{"text":"Silent Pearls","color":"dark_purple"},{"text":" don't! You can get them in my shop.","color":"white"}]
execute at @s run playsound entity.enderman.ambient player @s ~ ~ ~ 2 1.2 1
tag @s add NPC_1line
function public_islands:npc/right_clicking/right_click
