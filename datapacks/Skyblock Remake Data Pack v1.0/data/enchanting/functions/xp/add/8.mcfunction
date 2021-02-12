#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s 8 points
scoreboard players remove Global TelekinesisXP 8
execute if score Global TelekinesisXP matches 8.. run function enchanting:xp/add/8
#------------------------------------------#