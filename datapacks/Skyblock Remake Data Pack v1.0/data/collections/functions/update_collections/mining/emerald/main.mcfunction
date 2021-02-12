#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Emerald += @p C_Emerald
execute if score @s C_Emerald >= @s C_EmeraldN unless score @s C_EmeraldL matches 9.. run function collections:update_collections/mining/emerald/levelup
scoreboard players reset @p C_Emerald
#------------------------------------------#