loot give @p[level=14..] loot herobrine:archangel/vanguard
execute if entity @p[level=0..13] run tellraw @p[level=0..11] {"text":"You do not have enough experience to purchase this item.","color":"red"}
xp add @p[level=14..] -275 points
