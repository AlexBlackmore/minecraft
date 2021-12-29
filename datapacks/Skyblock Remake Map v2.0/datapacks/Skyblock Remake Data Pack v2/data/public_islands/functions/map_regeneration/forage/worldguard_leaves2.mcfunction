clone ~9998 ~91 ~9998 ~10008 ~103 ~10008 ~-5 ~-5 ~-5 masked
execute if entity @e[type=item,distance=..15,nbt={Age:0s,Item:{id:"minecraft:rose_bush",Count:1b}}] run function public_islands:map_regeneration/forage/fix_rosebushes
execute if block ~0.3 ~ ~ oak_leaves run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ oak_leaves run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 oak_leaves run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 oak_leaves run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ oak_leaves run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ oak_leaves run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:stick"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:apple"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:oak_sapling"}}]
kill @e[type=item,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:oak_leaves"}}]
