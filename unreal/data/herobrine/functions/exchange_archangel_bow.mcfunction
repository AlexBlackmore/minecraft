loot give @p[level=20..] loot herobrine:archangel/araistama
execute if entity @p[level=0..19] run tellraw @p[level=0..11] {"text":"You do not have enough experience to purchase this item.","color":"red"}
xp add @p[level=20..] -545 points
