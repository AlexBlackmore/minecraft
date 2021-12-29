#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
tag @s remove BlockMenuOpen
tag @s remove BlockEnchanting
tag @s remove BlockCrafting
tag @s remove BlockAnvil
execute if entity @s[tag=Menu] run function menu:remove_menu
function pets:pet_click_detection/summonmenu
tag @s add PetClickMenuOpen
#------------------------------------------#