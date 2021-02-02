loot give @p[level=21..] loot herobrine:archangel/windwalker
execute if entity @p[level=0..20] run tellraw @p[level=0..11] {"text":"You do not have enough experience to purchase this item.","color":"red"}
xp add @p[level=21..] -610 points
