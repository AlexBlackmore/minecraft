scoreboard players add @s EB_Open 1

execute if score @s EB_Open matches ..10 run function enchanting:enchanting_table/book_animation/oc/open_book
execute if score @s EB_Open matches 1..19 run function enchanting:enchanting_table/book_animation/oc/open_flip

execute if entity @s[scores={EB_Open=20..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:7}}]}
execute if entity @s[scores={EB_Open=20..}] run data merge entity @e[tag=EBPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:8}}]}
execute if entity @s[scores={EB_Open=20..}] run data merge entity @e[tag=EBPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",Count:1,tag:{CustomModelData:9}}]}
execute if entity @s[scores={EB_Open=20..}] run data merge entity @e[tag=EBPage3,limit=1,sort=nearest] {Pose:{Head:[270.5f,260f,90f]}}
execute if entity @s[scores={EB_Open=20..}] run data merge entity @e[tag=EBPage4,limit=1,sort=nearest] {Pose:{Head:[270.5f,260f,90f]}}
execute if entity @s[scores={EB_Open=20..}] run tag @s add EBOpen
execute if entity @s[scores={EB_Open=20..}] run tag @s remove EBOpening

execute at @s[scores={EB_Open=0}] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=1}] rotated ~90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=2}] rotated ~90 0 positioned ^ ^0.038 ^0.008 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=3}] rotated ~90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=4}] rotated ~90 0 positioned ^ ^0.051 ^0.006 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=5}] rotated ~90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=6}] rotated ~90 0 positioned ^ ^0.064 ^0.004 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=7}] rotated ~90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=8}] rotated ~90 0 positioned ^ ^0.077 ^0.002 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=9}] rotated ~90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=10..19}] rotated ~90 0 positioned ^ ^0.09 ^0.000 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

execute at @s[scores={EB_Open=0}] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=1}] rotated ~-90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=2}] rotated ~-90 0 positioned ^ ^0.038 ^0.008 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=3}] rotated ~-90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=4}] rotated ~-90 0 positioned ^ ^0.051 ^0.006 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=5}] rotated ~-90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=6}] rotated ~-90 0 positioned ^ ^0.064 ^0.004 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=7}] rotated ~-90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=8}] rotated ~-90 0 positioned ^ ^0.077 ^0.002 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=9}] rotated ~-90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=10..19}] rotated ~-90 0 positioned ^ ^0.09 ^0.000 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~