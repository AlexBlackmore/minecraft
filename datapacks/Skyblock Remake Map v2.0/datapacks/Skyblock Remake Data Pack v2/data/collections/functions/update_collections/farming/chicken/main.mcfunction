#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Chicken += @p C_Chicken
execute if score @s C_Chicken >= @s C_ChickenN unless score @s C_ChickenL matches 9.. run function collections:update_collections/farming/chicken/levelup
scoreboard players reset @p C_Chicken
#------------------------------------------#