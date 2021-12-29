scoreboard players set $c1 EB_Open 2025
scoreboard players set $c2 EB_Open 3375
scoreboard players set $d EB_Open 800
scoreboard players set $s EB_Open 10
scoreboard players operation $d EB_Open /= $s EB_Open

scoreboard players operation $e EB_Open = $d EB_Open
scoreboard players operation $e EB_Open *= @s EB_Open

scoreboard players operation $t EB_Open = $d EB_Open
scoreboard players operation $t EB_Open *= @s EB_Open
scoreboard players operation $t EB_Open += $c1 EB_Open
execute store result entity @e[tag=EBCover1,limit=1,sort=nearest] Pose.Head[0] float 0.1 run scoreboard players get $t EB_Open
execute store result entity @e[tag=EBPages1,limit=1,sort=nearest] Pose.Head[0] float 0.1 run scoreboard players get $t EB_Open

scoreboard players operation $t EB_Open -= $c1 EB_Open
scoreboard players operation $t EB_Open -= $c2 EB_Open
execute store result entity @e[tag=EBCover2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open
execute store result entity @e[tag=EBPages2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t EB_Open

