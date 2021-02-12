#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Clay += @p C_Clay
execute if score @s C_Clay >= @s C_ClayN unless score @s C_ClayL matches 5.. run function collections:update_collections/fishing/clay/levelup
scoreboard players reset @p C_Clay
#------------------------------------------#