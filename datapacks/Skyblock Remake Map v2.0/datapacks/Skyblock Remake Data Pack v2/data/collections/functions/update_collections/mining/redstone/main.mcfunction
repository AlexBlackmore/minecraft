#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Redstone += @p C_Redstone
execute if score @s C_Redstone >= @s C_RedstoneN unless score @s C_RedstoneL matches 15.. run function collections:update_collections/mining/redstone/levelup
scoreboard players reset @p C_Redstone
#------------------------------------------#