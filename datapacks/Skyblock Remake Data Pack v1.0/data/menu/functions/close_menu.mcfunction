#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute at @a[distance=..5] if score @s PlayerID = @p PlayerID run function menu:regenerate_menu
function menu:click_event
#------------------------------------------#