clone ~9995 ~-28 ~9995 ~10005 ~-39 ~10005 ~-5 ~-5 ~-5 masked
execute if entity @e[type=item,distance=..15,nbt={Age:0s,Item:{id:"minecraft:jungle_sapling"}}] run function public_islands:map_regeneration/jungle_island/fix_saplings
execute if block ~0.3 ~ ~ jungle_leaves run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ jungle_leaves run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 jungle_leaves run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 jungle_leaves run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ jungle_leaves run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ jungle_leaves run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:stick"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:jungle_sapling"}}]
kill @e[type=item,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:jungle_leaves"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:apple"}}]
