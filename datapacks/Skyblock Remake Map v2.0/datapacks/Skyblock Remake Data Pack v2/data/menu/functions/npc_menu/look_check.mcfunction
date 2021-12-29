#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute positioned ~ ~-1.6 ~ if entity @e[tag=NPC,distance=..0.35] run function menu:npc_menu/menu_check
execute positioned ~ ~-1 ~ if entity @e[tag=NPC,distance=..0.35] run function menu:npc_menu/menu_check
execute positioned ~ ~-0.4 ~ if entity @e[tag=NPC,distance=..0.35] run function menu:npc_menu/menu_check
execute if block ~ ~ ~ #skyblock:semi_air if entity @s[distance=..6] positioned ^ ^ ^0.2 run function menu:npc_menu/look_check
execute if entity @s[tag=!NPCMenuFound,tag=NPCMenuOpen] run function menu:npc_menu/close
#------------------------------------------#