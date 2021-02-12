#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Mutton += @p C_Mutton
execute if score @s C_Mutton >= @s C_MuttonN unless score @s C_MuttonL matches 9.. run function collections:update_collections/farming/mutton/levelup
scoreboard players reset @p C_Mutton
#------------------------------------------#