tag @s remove PersonalCompactor
data remove entity @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor] Items
data remove block 29999980 1 29832 Items
kill @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor]
kill @e[type=armor_stand,limit=1,sort=nearest,tag=pcompactor]