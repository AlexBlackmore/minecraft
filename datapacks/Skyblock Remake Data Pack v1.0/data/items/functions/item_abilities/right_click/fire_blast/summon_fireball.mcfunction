#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------SETUP------------------#
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {NoGravity:1b,Tags:["2SecTimeout","Timeout","Fireblast","Motion_target"],ExplosionPower:2b}
scoreboard players set Global Motion_speed 300
execute as @e[type=fireball,tag=Motion_target] at @s rotated as @p run function skyblock:motion/motion_1
#------------------------------------------#