#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Pufferfish += @p C_Pufferfish
execute if score @s C_Pufferfish >= @s C_PufferfishN unless score @s C_PufferfishL matches 9.. run function collections:update_collections/fishing/pufferfish/levelup
scoreboard players reset @p C_Pufferfish
#------------------------------------------#