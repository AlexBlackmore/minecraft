execute store result score itemcount pcompact.strlgth run clear @s minecraft:leather{Base:{Vanilla:1b}} 0
execute if score itemcount pcompact.strlgth matches 160.. run clear @s minecraft:leather 160
execute if score itemcount pcompact.strlgth matches 160.. run loot give @s loot cheats:get_items/materials/enchanted/enchanted_leather