#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
function menu:open_menus
execute if entity @s[scores={M_NewPage=-1..}] run function menu:change_page
execute if entity @s[scores={M_PageDelay=1..}] run function menu:open_menus
scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
#------------------------------------------#