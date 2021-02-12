#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Lapis += @p C_Lapis
execute if score @s C_Lapis >= @s C_LapisN unless score @s C_LapisL matches 9.. run function collections:update_collections/mining/lapis/levelup
scoreboard players reset @p C_Lapis
#------------------------------------------#