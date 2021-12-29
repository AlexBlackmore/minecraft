clone ~9995 ~-58 ~9995 ~10005 ~-69 ~10005 ~-5 ~-5 ~-5 filtered oak_leaves
execute if block ~0.3 ~ ~ oak_leaves run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ oak_leaves run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 oak_leaves run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 oak_leaves run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ oak_leaves run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ oak_leaves run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:stick"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:oak_sapling"}}]
kill @e[type=item,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:oak_leaves"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:apple"}}]
