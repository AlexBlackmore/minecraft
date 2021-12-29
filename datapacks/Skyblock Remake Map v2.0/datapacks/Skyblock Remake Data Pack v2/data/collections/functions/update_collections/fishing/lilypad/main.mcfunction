#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Lilypad += @p C_Lilypad
execute if score @s C_Lilypad >= @s C_LilypadN unless score @s C_LilypadL matches 9.. run function collections:update_collections/fishing/lilypad/levelup
scoreboard players reset @p C_Lilypad
#------------------------------------------#