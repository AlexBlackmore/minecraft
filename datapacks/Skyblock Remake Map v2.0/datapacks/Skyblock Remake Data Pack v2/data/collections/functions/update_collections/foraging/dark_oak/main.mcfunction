#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Darkoak += @p C_Darkoak
scoreboard players operation @s C_Darkoak += @p C_DarkoakWood
execute if score @s C_Darkoak >= @s C_DarkoakN unless score @s C_DarkoakL matches 9.. run function collections:update_collections/foraging/dark_oak/levelup
scoreboard players reset @p C_Darkoak
scoreboard players reset @p C_DarkoakWood
#------------------------------------------#