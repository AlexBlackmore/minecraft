#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Carrot += @p C_Carrot
execute if score @s C_Carrot >= @s C_CarrotN unless score @s C_CarrotL matches 9.. run function collections:update_collections/farming/carrot/levelup
scoreboard players reset @p C_Carrot
#------------------------------------------#