#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------ENDER CHESTS---------------#
execute as @p run function skyblock:multiplayer_storage/get
data modify entity @s Items set from storage blue:multiplayer_storage data.AccessoryBag
execute as @p run function skyblock:multiplayer_storage/save
tag @s remove AccessoryInit
#------------------------------------------#