#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Feather += @p C_Feather
execute if score @s C_Feather >= @s C_FeatherN unless score @s C_FeatherL matches 9.. run function collections:update_collections/farming/feather/levelup
scoreboard players reset @p C_Feather
#------------------------------------------#