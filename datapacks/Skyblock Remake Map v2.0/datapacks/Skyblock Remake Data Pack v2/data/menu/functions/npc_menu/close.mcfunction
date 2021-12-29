#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
function menu:remove_menu
execute if entity @s[nbt={SelectedItemSlot:8}] at @s run function menu:summon_menu
tag @s remove NPCMenuOpen
tag @s remove NPCMenuFound
#------------------------------------------#