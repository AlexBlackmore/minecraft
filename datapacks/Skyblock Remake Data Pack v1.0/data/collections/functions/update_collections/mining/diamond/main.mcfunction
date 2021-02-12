#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Diamond += @p C_Diamond
execute if score @s C_Diamond >= @s C_DiamondN unless score @s C_DiamondL matches 9.. run function collections:update_collections/mining/diamond/levelup
scoreboard players reset @p C_Diamond
#------------------------------------------#