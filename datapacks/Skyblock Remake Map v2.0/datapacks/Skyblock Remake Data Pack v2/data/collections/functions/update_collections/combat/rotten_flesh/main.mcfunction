#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Rottenflesh += @p C_Rottenflesh
execute if score @s C_Rottenflesh >= @s C_RottenfleshN unless score @s C_RottenfleshL matches 9.. run function collections:update_collections/combat/rotten_flesh/levelup
scoreboard players reset @p C_Rottenflesh
#------------------------------------------#