#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Sand += @p C_Sand
execute if score @s C_Sand >= @s C_SandN unless score @s C_SandL matches 7.. run function collections:update_collections/mining/sand/levelup
scoreboard players reset @p C_Sand
#------------------------------------------#