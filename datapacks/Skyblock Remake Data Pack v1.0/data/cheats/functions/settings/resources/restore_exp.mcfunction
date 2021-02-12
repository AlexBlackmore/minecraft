#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
xp set @s 0 levels
execute if score @s StoredEXP matches 8.. run function enchanting:xp/add_levels/8
execute if score @s StoredEXP matches 4.. run function enchanting:xp/add_levels/4
execute if score @s StoredEXP matches 1.. run function enchanting:xp/add_levels/1
#------------------------------------------#