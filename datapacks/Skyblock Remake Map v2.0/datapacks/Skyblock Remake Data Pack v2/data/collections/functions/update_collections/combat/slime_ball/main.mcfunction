#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Slimeball += @p C_Slimeball
execute if score @s C_Slimeball >= @s C_SlimeballN unless score @s C_SlimeballL matches 9.. run function collections:update_collections/combat/slime_ball/levelup
scoreboard players reset @p C_Slimeball
#------------------------------------------#