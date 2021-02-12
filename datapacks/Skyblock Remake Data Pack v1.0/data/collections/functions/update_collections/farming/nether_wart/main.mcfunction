#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Netherwart += @p C_Netherwart
execute if score @s C_Netherwart >= @s C_NetherwartN unless score @s C_NetherwartL matches 9.. run function collections:update_collections/farming/nether_wart/levelup
scoreboard players reset @p C_Netherwart
#------------------------------------------#