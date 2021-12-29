#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
execute store result score Global TelekinesisXP run data get entity @p SelectedItem.tag.Base.Enchantments[{magnet:{identifier:1b}}].magnet.level
execute if score Global TelekinesisXP matches 8.. run function enchanting:xp/add/8
execute if score Global TelekinesisXP matches 4.. run function enchanting:xp/add/4
execute if score Global TelekinesisXP matches 1.. run function enchanting:xp/add/1
#------------------------------------------#