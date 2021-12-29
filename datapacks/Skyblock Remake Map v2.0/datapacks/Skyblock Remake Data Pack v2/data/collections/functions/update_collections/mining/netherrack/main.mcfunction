#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Netherrack += @p C_Netherrack
execute if score @s C_Netherrack >= @s C_NetherrackN unless score @s C_NetherrackL matches 3.. run function collections:update_collections/mining/netherrack/levelup
scoreboard players reset @p C_Netherrack
#------------------------------------------#