#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
function cheats:teleports/to_private
execute as @e[tag=MenuChest,sort=nearest,limit=1] run function menu:regenerate_menu
execute as @e[tag=MenuChest,sort=nearest,limit=1] run function menu:click_event
#------------------------------------------#