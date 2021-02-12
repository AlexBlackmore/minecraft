#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Ghasttear += @p C_Ghasttear
execute if score @s C_Ghasttear >= @s C_GhasttearN unless score @s C_GhasttearL matches 9.. run function collections:update_collections/combat/ghast_tear/levelup
scoreboard players reset @p C_Ghasttear
#------------------------------------------#