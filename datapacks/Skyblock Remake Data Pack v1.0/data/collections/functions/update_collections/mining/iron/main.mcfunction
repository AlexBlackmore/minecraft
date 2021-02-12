#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Iron += @p C_Iron
execute if score @s C_Iron >= @s C_IronN unless score @s C_IronL matches 9.. run function collections:update_collections/mining/iron/levelup
scoreboard players reset @p C_Iron
#------------------------------------------#