fill -352 103 -23 -352 108 -23 dark_oak_log
fill -356 103 -23 -356 108 -23 dark_oak_log
setblock -351 107 -23 red_mushroom
kill @e[distance=..10,type=item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log",Count:1b}}]
kill @e[distance=..10,type=item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:red_mushroom",Count:1b}}]
