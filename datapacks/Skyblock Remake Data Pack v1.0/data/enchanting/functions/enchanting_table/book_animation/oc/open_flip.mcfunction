scoreboard players set $p1 EB_Open 2925
scoreboard players set $p2 EB_Open 2475
scoreboard players set $p3 EB_Open 3600
scoreboard players set $p4 EB_Open 1800
scoreboard players set $d EB_Open 7200
scoreboard players set $s EB_Open 19
scoreboard players operation $d EB_Open /= $s EB_Open

scoreboard players operation $e1 EB_Open = $e EB_Open
scoreboard players add $e1 EB_Open 0
scoreboard players set $e2 EB_Open 3600
scoreboard players operation $e2 EB_Open -= $e EB_Open
scoreboard players add $e2 EB_Open 0

scoreboard players operation $t EB_Open = $d EB_Open
scoreboard players operation $t EB_Open *= @s EB_Open
scoreboard players operation $t EB_Open -= $p1 EB_Open
function enchanting:enchanting_table/book_animation/oc/calc_t2
data merge entity @e[tag=EBPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:8}}]}
execute if score $t2 EB_Open <= $e1 EB_Open store result entity @e[tag=EBPage1,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute unless score $t2 EB_Open <= $e2 EB_Open store result entity @e[tag=EBPage1,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute if score $t2 EB_Open > $e1 EB_Open unless score $t2 EB_Open > $e2 EB_Open run data merge entity @e[tag=EBPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"scute",Count:1,tag:{CustomModelData:1}}]}


scoreboard players operation $t EB_Open += $p1 EB_Open
scoreboard players operation $t EB_Open -= $p2 EB_Open
function enchanting:enchanting_table/book_animation/oc/calc_t2b
data merge entity @e[tag=EBPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:9}}]}
execute if score $t2 EB_Open <= $e1 EB_Open store result entity @e[tag=EBPage2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute unless score $t2 EB_Open <= $e2 EB_Open store result entity @e[tag=EBPage2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute if score $t2 EB_Open > $e1 EB_Open unless score $t2 EB_Open > $e2 EB_Open run data merge entity @e[tag=EBPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"scute",Count:1,tag:{CustomModelData:1}}]}

scoreboard players operation $t EB_Open += $p2 EB_Open
scoreboard players operation $t EB_Open -= $p3 EB_Open
function enchanting:enchanting_table/book_animation/oc/calc_t2
data merge entity @e[tag=EBPage3,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:8}}]}
execute if score $t2 EB_Open <= $e1 EB_Open store result entity @e[tag=EBPage3,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute unless score $t2 EB_Open <= $e2 EB_Open store result entity @e[tag=EBPage3,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute if score $t2 EB_Open > $e1 EB_Open unless score $t2 EB_Open > $e2 EB_Open run data merge entity @e[tag=EBPage3,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"scute",Count:1,tag:{CustomModelData:1}}]}

scoreboard players operation $t EB_Open += $p3 EB_Open
scoreboard players operation $t EB_Open -= $p4 EB_Open
function enchanting:enchanting_table/book_animation/oc/calc_t2b
data merge entity @e[tag=EBPage4,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:9}}]}
execute if score $t2 EB_Open <= $e1 EB_Open store result entity @e[tag=EBPage4,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute unless score $t2 EB_Open <= $e2 EB_Open store result entity @e[tag=EBPage4,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute if score $t2 EB_Open > $e1 EB_Open unless score $t2 EB_Open > $e2 EB_Open run data merge entity @e[tag=EBPage4,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"scute",Count:1,tag:{CustomModelData:1}}]}