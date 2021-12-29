#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Gold += @p C_Gold
execute if score @s C_Gold >= @s C_GoldN unless score @s C_GoldL matches 9.. run function collections:update_collections/mining/gold/levelup
scoreboard players reset @p C_Gold
#------------------------------------------#