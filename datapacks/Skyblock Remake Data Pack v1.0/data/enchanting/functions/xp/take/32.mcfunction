#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s -32 levels
scoreboard players remove @s E_XPLevel 32
execute if entity @s[scores={E_XPLevel=32..}] run function enchanting:xp/take/32
#------------------------------------------#