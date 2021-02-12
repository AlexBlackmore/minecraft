#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s -1 levels
scoreboard players remove @s E_XPLevel 1
execute if entity @s[scores={E_XPLevel=1..}] run function enchanting:xp/take/1
#------------------------------------------#