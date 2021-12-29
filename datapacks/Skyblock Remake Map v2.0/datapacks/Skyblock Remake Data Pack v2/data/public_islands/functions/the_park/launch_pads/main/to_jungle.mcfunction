#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players add @e[type=armor_stand,tag=TP_ToJungle] Date 1
execute as @e[type=armor_stand,tag=TP_ToJungle,scores={Date=15}] at @s run function public_islands:the_park/launch_pads/launch_forward/to_jungle
execute if entity @e[type=armor_stand,tag=TP_ToJungle] run schedule function public_islands:the_park/launch_pads/main/to_jungle 1t
#------------------------------------------#
