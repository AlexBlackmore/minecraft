#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Coal += @p C_Coal
execute if score @s C_Coal >= @s C_CoalN unless score @s C_CoalL matches 9.. run function collections:update_collections/mining/coal/levelup
scoreboard players reset @p C_Coal
#------------------------------------------#