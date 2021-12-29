execute store result score itemcount pcompact.strlgth run clear @s minecraft:ender_pearl{Base:{Vanilla:1b}} 0
execute if score itemcount pcompact.strlgth matches 20.. run clear @s minecraft:ender_pearl 20
execute if score itemcount pcompact.strlgth matches 20.. run loot give @s loot cheats:get_items/materials/enchanted/enchanted_ender_pearl