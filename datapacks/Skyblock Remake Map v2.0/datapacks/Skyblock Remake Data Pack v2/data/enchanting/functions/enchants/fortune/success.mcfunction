#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
execute store result score $DoubleCount Temp run data get entity @s Item.Count
scoreboard players operation $DoubleCount Temp *= c2 Constant
execute store result entity @s Item.Count byte 1 run scoreboard players get $DoubleCount Temp
#------------------------------------------#