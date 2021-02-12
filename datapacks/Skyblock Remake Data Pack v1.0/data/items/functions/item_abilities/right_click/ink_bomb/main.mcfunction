#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------PARTICLE EFFECTS-------------#
execute at @s anchored eyes run particle minecraft:smoke ^ ^ ^1 0.1 0.1 0.1 0 5 normal
#--------------INK SAC SUMMON--------------#
execute at @s anchored eyes run summon armor_stand ^ ^-1 ^0.5 {Small:1b,Invisible:1b,Tags:["1SecTimeout","Timeout","Motion_target"],Passengers:[{id:"minecraft:item",Age:5980,PickupDelay:32767,Tags:["InkBomb"],Item:{id:"minecraft:ink_sac",Count:1b}}]}
scoreboard players set Global Motion_speed 100
execute as @e[tag=1SecTimeout,tag=Motion_target,sort=nearest,limit=1] at @s rotated as @p run function skyblock:motion/motion_1
#------------------------------------------#