#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if block ~ ~ ~ anvil run function anvils:normal/block/place/switch
execute if block ~ ~ ~ #skyblock:allowed if entity @s[distance=..5] positioned ^ ^ ^0.2 run function anvils:normal/block/place/ray
#------------------------------------------#