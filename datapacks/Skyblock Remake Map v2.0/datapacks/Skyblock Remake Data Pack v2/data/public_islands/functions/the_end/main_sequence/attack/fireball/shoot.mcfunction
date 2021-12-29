#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
execute as @a[distance=..100] at @s run playsound minecraft:entity.ghast.shoot master @s

scoreboard players set Global Motion_speed 600
summon minecraft:fireball ~ ~ ~ {Tags:["Timeout","10SecTimeout","Drag_Fireball","Motion_target","Motion2_target"]}
function skyblock:motion/motion_1
#---------------RANDOM BONUS---------------#
execute as @e[tag=Motion2_target] store result score $FireballRandom End_DragSeq run data get entity @s Motion[0] 1000000
function public_islands:the_end/main_sequence/attack/fireball/random_bonus
execute as @e[tag=Motion2_target] store result entity @s Motion[0] double 0.00000001 run scoreboard players get $FireballRandom End_DragSeq

execute as @e[tag=Motion2_target] store result score $FireballRandom End_DragSeq run data get entity @s Motion[1] 1000000
function public_islands:the_end/main_sequence/attack/fireball/random_bonus
execute as @e[tag=Motion2_target] store result entity @s Motion[1] double 0.00000001 run scoreboard players get $FireballRandom End_DragSeq

execute as @e[tag=Motion2_target] store result score $FireballRandom End_DragSeq run data get entity @s Motion[2] 1000000
function public_islands:the_end/main_sequence/attack/fireball/random_bonus
execute as @e[tag=Motion2_target] store result entity @s Motion[2] double 0.00000001 run scoreboard players get $FireballRandom End_DragSeq
tag @e remove Motion2_target
#------------------------------------------#