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

execute as @e[tag=EnderChestZealot] run function skyblock:kill

execute if entity @s[tag=the_park] as @p[tag=LaunchPlayer] at @s in skyblock:main_island run tp @s -221.5 73 -15.5 -90 0
execute if entity @s[tag=spiders_den1] as @p[tag=LaunchPlayer] at @s in skyblock:main_island run tp @s -159.5 73 -158.5 -45 0
execute if entity @s[tag=gold_mine1] as @p[tag=LaunchPlayer] at @s in skyblock:main_island run tp @s -9.5 64 -228.5 0 0
execute if entity @s[tag=the_barn1] as @p[tag=LaunchPlayer] at @s in skyblock:main_island run tp @s 76.5 72 -181.5 45 0
execute if entity @s[tag=mushroom_desert] as @p[tag=LaunchPlayer] at @s in skyblock:the_barn run tp @s 142.5 91.5 -305.5 0 0
execute if entity @s[tag=blazing_fortress] as @p[tag=LaunchPlayer] at @s in skyblock:spiders_den run tp @s -254.0 132 -291.0 0 0
execute if entity @s[tag=the_end] as @p[tag=LaunchPlayer] at @s if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute if entity @s[tag=the_end] as @p[tag=LaunchPlayer] at @s in skyblock:spiders_den run tp @s -382.0 89 -268.0 -90 0
execute if entity @s[tag=deep_caverns] as @p[tag=LaunchPlayer] at @s in skyblock:gold_mine run tp @s -8.0 68 -393.0 41 0

tag @p[tag=LaunchPlayer] remove LaunchPlayer
#------------------------------------------#