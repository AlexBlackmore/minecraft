#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Cod += @p C_Cod
execute if score @s C_Cod >= @s C_CodN unless score @s C_CodL matches 9.. run function collections:update_collections/fishing/cod/levelup
scoreboard players reset @p C_Cod
#------------------------------------------#