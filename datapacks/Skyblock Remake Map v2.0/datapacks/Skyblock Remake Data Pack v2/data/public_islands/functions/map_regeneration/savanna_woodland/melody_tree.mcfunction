clone ~9995 ~-58 ~9995 ~10005 ~-69 ~10005 ~-5 ~-5 ~-5 masked
execute if block ~0.3 ~ ~ #minecraft:acacia_logs run tp @s ~-0.1 ~ ~
execute if block ~-0.3 ~ ~ #minecraft:acacia_logs run tp @s ~0.1 ~ ~
execute if block ~ ~ ~0.3 #minecraft:acacia_logs run tp @s ~ ~ ~-0.1
execute if block ~ ~ ~-0.3 #minecraft:acacia_logs run tp @s ~ ~ ~0.1
execute if block ~ ~ ~ #minecraft:acacia_logs run tp @s ~ ~0.1 ~
execute if block ~ ~0.89 ~ #minecraft:acacia_logs run tp @s ~ ~1 ~
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}]
kill @e[type=item,limit=1,sort=nearest,distance=..15,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}]
