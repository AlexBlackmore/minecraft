#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute as @p[tag=LaunchPlayer] run scoreboard players operation @s PlayerHP = @s P_Health
execute if entity @s[tag=LaunchEntityTo] run function public_islands:launch_pads/end_to
execute if entity @s[tag=LaunchEntityFrom] run function public_islands:launch_pads/end_from
kill @s
#------------------------------------------#