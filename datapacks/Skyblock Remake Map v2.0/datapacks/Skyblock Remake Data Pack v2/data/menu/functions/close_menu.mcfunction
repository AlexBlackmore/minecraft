#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute at @s if entity @s[tag=!NPCMenu,tag=!SelectTeamChest] at @a[distance=..5] if score @s PlayerID = @p PlayerID run function menu:regenerate_menu
execute at @s if entity @s[tag=NPCMenu,tag=!SelectTeamChest,scores={M_NPCMenuPage=266..}] at @a[distance=..5] if score @s PlayerID = @p PlayerID run function menu:npc_menu/regenerate_menu
execute at @s if entity @s[tag=NPCMenu,tag=!SelectTeamChest,scores={M_NPCMenuPage=..265}] at @a[distance=..5] if score @s PlayerID = @p PlayerID as @p run function items:item_abilities/right_click/whassup/summon_menu
execute at @s if entity @s[tag=!NPCMenu,tag=SelectTeamChest] at @a[distance=..5,team=] if score @s PlayerID = @p PlayerID run function menu:regenerate_select

function menu:click_event
#------------------------------------------#