execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs unless entity @e[tag=TravelTo,distance=..2] unless score @p[tag=Mining_Tree] Treecapitator >= Limit Treecapitator run function items:item_abilities/treecapitator/tag_give
data modify entity @s Age set value 0s
tag @s remove Treecapitator
execute as @a[tag=Mining_Tree,tag=Held_Telekinesis] at @s run function enchanting:enchants/telekinesis/items
execute as @a[tag=Mining_Tree] at @s run function skills:foraging/wood