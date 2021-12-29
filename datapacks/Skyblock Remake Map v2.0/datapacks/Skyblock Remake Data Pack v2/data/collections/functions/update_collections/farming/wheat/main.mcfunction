#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Wheat += @p C_Wheat
execute if score @s C_Wheat >= @s C_WheatN unless score @s C_WheatL matches 11.. run function collections:update_collections/farming/wheat/levelup
scoreboard players reset @p C_Wheat
#------------------------------------------#