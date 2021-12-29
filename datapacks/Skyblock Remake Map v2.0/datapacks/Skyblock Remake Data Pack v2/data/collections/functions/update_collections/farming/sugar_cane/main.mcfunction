#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Sugarcane += @p C_Sugarcane
execute if score @s C_Sugarcane >= @s C_SugarcaneN unless score @s C_SugarcaneL matches 9.. run function collections:update_collections/farming/sugar_cane/levelup
scoreboard players reset @p C_Sugarcane
#------------------------------------------#