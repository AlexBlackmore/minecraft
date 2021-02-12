#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Leather += @p C_Leather
execute if score @s C_Leather >= @s C_LeatherN unless score @s C_LeatherL matches 10.. run function collections:update_collections/farming/leather/levelup
scoreboard players reset @p C_Leather
#------------------------------------------#