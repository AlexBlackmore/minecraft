#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Cactus += @p C_Cactus
execute if score @s C_Cactus >= @s C_CactusN unless score @s C_CactusL matches 9.. run function collections:update_collections/farming/cactus/levelup
scoreboard players reset @p C_Cactus
#------------------------------------------#