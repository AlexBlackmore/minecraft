#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players add @e[type=armor_stand,tag=TP_ToSpruce] Date 1
execute as @e[type=armor_stand,tag=TP_ToSpruce,scores={Date=15}] at @s run function public_islands:the_park/launch_pads/launch_forward/to_spruce
execute if entity @e[type=armor_stand,tag=TP_ToSpruce] run schedule function public_islands:the_park/launch_pads/main/to_spruce 1t
#------------------------------------------#
