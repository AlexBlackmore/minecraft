#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Rabbit += @p C_Rabbit
execute if score @s C_Rabbit >= @s C_RabbitN unless score @s C_RabbitL matches 9.. run function collections:update_collections/farming/rabbit/levelup
scoreboard players reset @p C_Rabbit
#------------------------------------------#