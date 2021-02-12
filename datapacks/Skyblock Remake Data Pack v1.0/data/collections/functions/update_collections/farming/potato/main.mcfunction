#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Potato += @p C_Potato
execute if score @s C_Potato >= @s C_PotatoN unless score @s C_PotatoL matches 9.. run function collections:update_collections/farming/potato/levelup
scoreboard players reset @p C_Potato
#------------------------------------------#