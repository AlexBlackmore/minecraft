#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Cobblestone += @p C_Cobblestone
execute if score @s C_Cobblestone >= @s C_CobblestoneN unless score @s C_CobblestoneL matches 9.. run function collections:update_collections/mining/cobblestone/levelup
scoreboard players reset @p C_Cobblestone
#------------------------------------------#