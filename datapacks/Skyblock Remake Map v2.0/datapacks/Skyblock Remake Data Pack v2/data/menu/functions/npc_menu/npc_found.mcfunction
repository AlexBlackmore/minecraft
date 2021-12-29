#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if entity @s[tag=Menu] run function menu:remove_menu
function menu:npc_menu/summon_menu
tag @s add NPCMenuOpen
#------------------------------------------#