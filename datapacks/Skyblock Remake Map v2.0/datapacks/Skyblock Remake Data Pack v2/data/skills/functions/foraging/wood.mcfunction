scoreboard players set $MaxRaycast Temp 12
execute if score @s SubLocation matches 32 if entity @e[tag=Melody,distance=..20] run tag @s add PortalFound
execute anchored eyes positioned ~ ~1 ~ run function skills:foraging/check_portal/raycast
execute if entity @s[tag=!PortalFound] run scoreboard players set @s AddForaging 6
execute if entity @s[tag=!PortalFound] run function skills:foraging/add_xp
scoreboard players reset @s B_OakL
scoreboard players reset @s B_OakW
scoreboard players reset @s B_SpruceL
scoreboard players reset @s B_SpruceW
scoreboard players reset @s B_BirchL
scoreboard players reset @s B_BirchW
scoreboard players reset @s B_DarkoakL
scoreboard players reset @s B_DarkoakW
scoreboard players reset @s B_AcaciaL
scoreboard players reset @s B_AcaciaW
scoreboard players reset @s B_JungleL
scoreboard players reset @s B_JungleW
tag @a remove PortalFound