#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s 4 levels
scoreboard players remove @s StoredEXP 4
execute if score @s StoredEXP matches 4.. run function enchanting:xp/add_levels/4
#------------------------------------------#