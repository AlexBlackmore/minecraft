#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Gravel += @p C_Gravel
execute if score @s C_Gravel >= @s C_GravelN unless score @s C_GravelL matches 9.. run function collections:update_collections/mining/gravel/levelup
scoreboard players reset @p C_Gravel
#------------------------------------------#