#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_String += @p C_String
execute if score @s C_String >= @s C_StringN unless score @s C_StringL matches 9.. run function collections:update_collections/combat/string/levelup
scoreboard players reset @p C_String
#------------------------------------------#