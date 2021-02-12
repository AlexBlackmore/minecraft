#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute store result score @s PrevGamemode run data get entity @s playerGameType
gamemode spectator @s
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 2 1
particle minecraft:explosion ~ ~ ~ 1 1 1 0.01 4
spectate @e[tag=LaunchEntityInit,sort=nearest,limit=1]
tag @s add LaunchPlayer
tag @e remove LaunchEntityInit
#------------------------------------------#