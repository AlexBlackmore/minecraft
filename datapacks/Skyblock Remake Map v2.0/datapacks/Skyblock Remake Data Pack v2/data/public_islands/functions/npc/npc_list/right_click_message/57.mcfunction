summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text1"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text2"]}
summon area_effect_cloud ~ ~-2 ~ {Radius:0f,RadiusPerTick:-1f,RadiusOnUse:-1f,Duration:1,Tags:["NPC_random","text3"]}
execute positioned ~ ~-2 ~ run kill @e[type=area_effect_cloud,tag=NPC_random,limit=2,sort=random]
tag @s[team=yellow] add yellow
tag @s[team=green] add green
tag @s[team=red] add red
tag @s[team=dark_gray] add dark_gray
tag @s[team=gray] add gray
tag @s[team=dark_aqua] add dark_aqua
tag @s[team=dark_purple] add dark_purple
tag @s[team=blue] add blue
tag @s[team=dark_blue] add dark_blue
tag @s[team=dark_green] add dark_green
tag @s[team=dark_red] add dark_red
tag @s[team=black] add black
tag @s[team=white] add white
tag @s[team=gold] add gold
tag @s[team=light_purple] add light_purple
tag @s[team=aqua] add aqua
team leave @s
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text1,distance=..0.1] run tellraw @s [{"text":"[NPC] Wizard","color":"yellow"},{"text":": The Portal hasn't worked since...I don't want to talk about it.","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text2,distance=..0.1] run tellraw @s [{"text":"[NPC] Wizard","color":"yellow"},{"text":": Check back later to use the Portal...it seems to be broken. :(","color":"white"}]
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tellraw @s [{"text":"[NPC] Wizard","color":"yellow"},{"text":": My Portal seems to be broken, ","color":"white"},{"selector":"@s","color":"white"},{"text":"!","color":"white"}]
team join yellow @s[tag=yellow]
team join green @s[tag=green]
team join red @s[tag=red]
team join dark_gray @s[tag=dark_gray]
team join gray @s[tag=gray]
team join dark_aqua @s[tag=dark_aqua]
team join dark_purple @s[tag=dark_purple]
team join blue @s[tag=blue]
team join dark_blue @s[tag=dark_blue]
team join dark_green @s[tag=dark_green]
team join dark_red @s[tag=dark_red]
team join black @s[tag=black]
team join white @s[tag=white]
team join gold @s[tag=gold]
team join light_purple @s[tag=light_purple]
team join aqua @s[tag=aqua]
tag @s remove yellow
tag @s remove green
tag @s remove red
tag @s remove dark_gray
tag @s remove gray
tag @s remove dark_aqua
tag @s remove dark_purple
tag @s remove blue
tag @s remove dark_blue
tag @s remove dark_green
tag @s remove dark_red
tag @s remove black
tag @s remove white
tag @s remove gold
tag @s remove light_purple
tag @s remove aqua
execute at @s run playsound entity.villager.celebrate player @s ~ ~ ~ 2 0.7 1
execute positioned ~ ~-2 ~ unless entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tag @s add NPC_1line
execute positioned ~ ~-2 ~ if entity @e[type=area_effect_cloud,tag=text3,distance=..0.1] run tag @s add NPC_2lines
scoreboard players set @s NPC_Skin 57
function public_islands:npc/right_clicking/right_click
