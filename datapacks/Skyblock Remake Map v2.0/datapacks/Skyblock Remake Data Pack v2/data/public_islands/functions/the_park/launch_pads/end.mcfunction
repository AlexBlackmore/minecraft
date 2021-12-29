#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute as @p[tag=LaunchPlayer] run gamemode survival @s[scores={PrevGamemode=0}]
execute as @p[tag=LaunchPlayer] run gamemode creative @s[scores={PrevGamemode=1}]
execute as @p[tag=LaunchPlayer] run gamemode adventure @s[scores={PrevGamemode=2}]
scoreboard players reset @p[tag=LaunchPlayer] PrevGamemode

execute if entity @s[tag=LaunchEntityTo] run function public_islands:the_park/launch_pads/end_to
execute if entity @s[tag=LaunchEntityFrom] run function public_islands:the_park/launch_pads/end_from

tag @p[tag=LaunchPlayer] remove LaunchPlayer

kill @s
#------------------------------------------#
