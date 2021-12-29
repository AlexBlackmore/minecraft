scoreboard players remove @s EB_Open 1

execute if score @s EB_Open matches 10.. run function enchanting:enchanting_table/book_animation/oc/close_book

execute if entity @s[scores={EB_Open=0}] run tag @s remove EBOpen
execute if entity @s[scores={EB_Open=0}] run tag @s remove EBClosing


execute at @s[scores={EB_Open=20}] rotated ~90 0 positioned ^ ^0.09 ^0.000 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=19}] rotated ~90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=18}] rotated ~90 0 positioned ^ ^0.077 ^0.002 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=17}] rotated ~90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=16}] rotated ~90 0 positioned ^ ^0.064 ^0.004 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=15}] rotated ~90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=14}] rotated ~90 0 positioned ^ ^0.051 ^0.006 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=13}] rotated ~90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=12}] rotated ~90 0 positioned ^ ^0.038 ^0.008 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=11}] rotated ~90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={EB_Open=1..10}] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

execute at @s[scores={EB_Open=20}] rotated ~-90 0 positioned ^ ^0.09 ^0.000 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=19}] rotated ~-90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=18}] rotated ~-90 0 positioned ^ ^0.077 ^0.002 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=17}] rotated ~-90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=16}] rotated ~-90 0 positioned ^ ^0.064 ^0.004 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=15}] rotated ~-90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=14}] rotated ~-90 0 positioned ^ ^0.051 ^0.006 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=13}] rotated ~-90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=12}] rotated ~-90 0 positioned ^ ^0.038 ^0.008 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=11}] rotated ~-90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={EB_Open=1..10}] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
