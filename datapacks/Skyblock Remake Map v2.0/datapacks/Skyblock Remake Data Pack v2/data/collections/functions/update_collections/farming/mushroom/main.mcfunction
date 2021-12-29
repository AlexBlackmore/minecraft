#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Mushroom += @p C_Mushroom
scoreboard players operation @s C_Mushroom += @p C_BMushroom
execute if score @s C_Mushroom >= @s C_MushroomN unless score @s C_MushroomL matches 9.. run function collections:update_collections/farming/mushroom/levelup
scoreboard players reset @p C_Mushroom
scoreboard players reset @p C_BMushroom
#------------------------------------------#