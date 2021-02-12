#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[scores={Location=8,SubLocation=35}] in skyblock:the_end positioned 0 1 0 run tp @e[tag=Drag_LaunchPlayer,sort=nearest,limit=2] @s
execute as @a[scores={Location=8,SubLocation=35}] at @s run tag @e[tag=Drag_LaunchPlayer,sort=nearest,limit=2] remove Drag_LaunchPlayer
schedule function public_islands:the_end/launch_player/post 1t
#------------------------------------------#