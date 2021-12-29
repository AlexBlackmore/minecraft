#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute at @s as @e[tag=MenuChest,tag=NPCMenu,scores={M_NPCMenuPage=..265}] if score @s PlayerID = @p PlayerID run function menu:reset_menu_maddox
advancement revoke @s only menu:open_npc_menu
#------------------------------------------#