#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s 4 points
scoreboard players remove Global TelekinesisXP 4
execute if score Global TelekinesisXP matches 4.. run function enchanting:xp/add/4
#------------------------------------------#