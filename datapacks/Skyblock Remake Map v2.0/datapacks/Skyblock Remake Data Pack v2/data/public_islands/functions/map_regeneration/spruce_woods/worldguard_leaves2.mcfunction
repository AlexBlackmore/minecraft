clone 9666 62 9987 9662 59 9980 -338 93 -20 masked
execute if entity @e[type=item,distance=..15,nbt={Age:0s,Item:{id:"minecraft:spruce_sapling",Count:1b}}] run function public_islands:map_regeneration/spruce_woods/fix_saplings
execute if block ~0.3 ~ ~ spruce_leaves run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ spruce_leaves run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 spruce_leaves run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 spruce_leaves run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ spruce_leaves run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ spruce_leaves run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:stick"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:spruce_sapling"}}]
kill @e[type=item,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:spruce_leaves"}}]
