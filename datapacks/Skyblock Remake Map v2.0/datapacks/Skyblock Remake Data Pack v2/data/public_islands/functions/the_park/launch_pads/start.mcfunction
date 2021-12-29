#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute if entity @e[type=armor_stand,tag=LaunchEntityInit,tag=TP_ToSpruce] run function public_islands:the_park/launch_pads/main/to_spruce
execute if entity @e[type=armor_stand,tag=LaunchEntityInit,tag=TP_ToDarkThicket] run function public_islands:the_park/launch_pads/main/to_dark_thicket
execute if entity @e[type=armor_stand,tag=LaunchEntityInit,tag=TP_ToSavanna] run function public_islands:the_park/launch_pads/main/to_savanna
execute if entity @e[type=armor_stand,tag=LaunchEntityInit,tag=TP_ToJungle] run function public_islands:the_park/launch_pads/main/to_jungle

execute store result score @s PrevGamemode run data get entity @s playerGameType
gamemode spectator @s
spectate @e[tag=LaunchEntityInit,sort=nearest,limit=1]
tag @s add LaunchPlayer
execute as @e[type=armor_stand,tag=LaunchEntityInit,sort=nearest,limit=1] if entity @s[tag=LaunchEntityFrom] as @p[tag=LaunchPlayer] run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 0.85 1
tag @e remove LaunchEntityInit
#------------------------------------------#
