#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if score @e[tag=NPCName,sort=nearest,limit=1] M_NPCMenuPage matches 1.. if entity @s[tag=!NPCMenuOpen] run function menu:npc_menu/npc_found
execute if score @e[tag=NPCName,sort=nearest,limit=1] M_NPCMenuPage matches 1.. run tag @s add NPCMenuFound
#------------------------------------------#