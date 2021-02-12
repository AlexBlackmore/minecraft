#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Pumpkin += @p C_Pumpkin
execute if score @s C_Pumpkin >= @s C_PumpkinN unless score @s C_PumpkinL matches 9.. run function collections:update_collections/farming/pumpkin/levelup
scoreboard players reset @p C_Pumpkin
#------------------------------------------#