clone 9728 54 9989 9724 51 9983 -276 85 -17 masked
execute if entity @e[type=item,distance=..15,nbt={Age:0s,Item:{id:"minecraft:birch_sapling"}}] run function public_islands:map_regeneration/birch_park/fix_saplings

execute if block ~0.3 ~ ~ birch_leaves run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ birch_leaves run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 birch_leaves run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 birch_leaves run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ birch_leaves run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ birch_leaves run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:stick"}}]
kill @e[type=item,distance=..15,nbt={Age:0s,Item:{id:"minecraft:birch_sapling"}}]
kill @e[type=item,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:birch_leaves"}}]
