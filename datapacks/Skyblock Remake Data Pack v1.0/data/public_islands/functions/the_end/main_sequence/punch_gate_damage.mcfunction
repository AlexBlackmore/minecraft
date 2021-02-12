#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------DAMAGE GATE---------------#
particle minecraft:large_smoke ~0.3 ~0.3 ~ 0.1 0.5 0.5 0.01 20
scoreboard players operation Gate End_DragDamage -= $DamageOutput Temp

execute if predicate minecraft:random_chance/10_percent run function public_islands:the_end/main_sequence/punch_gate_mob

execute if score Gate End_DragDamage matches ..0 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[||||||||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 1..50000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|","color":"red"},{"text":"|||||||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 50001..100000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||","color":"red"},{"text":"||||||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 100001..150000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||","color":"red"},{"text":"|||||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 150001..200000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||","color":"red"},{"text":"||||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 200001..250000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||","color":"red"},{"text":"|||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 250001..300000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||","color":"red"},{"text":"||||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 300001..350000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||","color":"red"},{"text":"|||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 350001..400000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||","color":"red"},{"text":"||||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 400001..450000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||","color":"red"},{"text":"|||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 450001..500000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||","color":"red"},{"text":"||||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 500001..550000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||||","color":"red"},{"text":"|||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 550001..600000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||","color":"red"},{"text":"||||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 600001..650000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||||||","color":"red"},{"text":"|||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 650001..700000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||||","color":"red"},{"text":"||||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 700001..750000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||||||||","color":"red"},{"text":"|||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 750001..800000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||||||","color":"red"},{"text":"||||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 800001..850000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||||||||||","color":"red"},{"text":"|||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 850001..900000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||||||||","color":"red"},{"text":"||]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 900001..950000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"|||||||||||||||||||","color":"red"},{"text":"|]","color":"gray"}]'}
execute if score Gate End_DragDamage matches 950001..1000000 as @e[tag=DragonGatePercent] run data merge entity @s {CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||||||||||","color":"red"},{"text":"]","color":"gray"}]'}

execute if score Gate End_DragDamage matches ..700000 if entity @e[tag=DragonGatePercent,tag=!DragonGateWeakening] run tellraw @a[scores={Location=8}] ["",{"text":"☬ ","color":"dark_purple"},{"text":" The Dragon\'s Gate is weakening!","color":"light_purple","bold":true}]
execute if score Gate End_DragDamage matches ..700000 as @e[tag=DragonGatePercent,tag=!DragonGateWeakening] run tag @s add DragonGateWeakening

execute if score Gate End_DragDamage matches ..450000 if entity @e[tag=DragonGatePercent,tag=!DragonGateBudge] run tellraw @a[scores={Location=8}] ["",{"text":"☬ ","color":"dark_purple"},{"text":" The Dragon\'s Gate is starting to budge!","color":"light_purple","bold":true}]
execute if score Gate End_DragDamage matches ..450000 as @e[tag=DragonGatePercent,tag=!DragonGateBudge] run tag @s add DragonGateBudge

execute if score Gate End_DragDamage matches ..150000 if entity @e[tag=DragonGatePercent,tag=!DragonGateNearly] run tellraw @a[scores={Location=8}] ["",{"text":"☬ ","color":"dark_purple"},{"text":" The Dragon\'s Gate is nearly open!","color":"light_purple","bold":true}]
execute if score Gate End_DragDamage matches ..150000 as @e[tag=DragonGatePercent,tag=!DragonGateNearly] run tag @s add DragonGateNearly

execute if score Gate End_DragDamage matches ..0 run tellraw @a[scores={Location=8}] ["",{"text":"☬ ","color":"dark_purple"},{"text":" The Dragon\'s Gate has opened!","color":"light_purple","bold":true}]
execute if score Gate End_DragDamage matches ..0 as @a[scores={Location=8}] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0 1
execute if score Gate End_DragDamage matches ..0 run schedule function public_islands:the_end/open_door/start 1s
#------------------------------------------#