#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Endstone += @p C_Endstone
execute if score @s C_Endstone >= @s C_EndstoneN unless score @s C_EndstoneL matches 10.. run function collections:update_collections/mining/end_stone/levelup
scoreboard players reset @p C_Endstone
#------------------------------------------#