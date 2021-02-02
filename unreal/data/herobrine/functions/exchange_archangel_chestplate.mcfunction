loot give @p[level=18..] loot herobrine:archangel/ariels_armor
execute if entity @p[level=0..17] run tellraw @p[level=0..11] {"text":"You do not have enough experience to purchase this item.","color":"red"}
xp add @p[level=18..] -425 points
