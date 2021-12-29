#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players add @e[type=armor_stand,tag=TP_ToSavanna] Date 1
execute as @e[type=armor_stand,tag=TP_ToSavanna,scores={Date=13}] at @s run function public_islands:the_park/launch_pads/launch_forward/to_savanna
execute if entity @e[type=armor_stand,tag=TP_ToSavanna] run schedule function public_islands:the_park/launch_pads/main/to_savanna 1t
#------------------------------------------#
