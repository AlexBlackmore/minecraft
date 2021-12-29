tag @s remove holding_backpack
data remove entity @e[type=chest_minecart,limit=1,sort=nearest,tag=backpack] Items
data remove block 29999980 1 29832 Items
kill @e[type=chest_minecart,limit=1,sort=nearest,tag=backpack]
kill @e[type=armor_stand,limit=1,sort=nearest,tag=backpack]