#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Melon += @p C_Melon
execute if score @s C_Melon >= @s C_MelonN unless score @s C_MelonL matches 9.. run function collections:update_collections/farming/melon/levelup
scoreboard players reset @p C_Melon
#------------------------------------------#