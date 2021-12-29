#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
xp add @s 1 points
scoreboard players remove Global TelekinesisXP 1
execute if score Global TelekinesisXP matches 1.. run function enchanting:xp/add/1
#------------------------------------------#