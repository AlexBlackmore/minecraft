#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
function cheats:teleports/to_village
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:regenerate_menu
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:click_event
#------------------------------------------#