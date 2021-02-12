#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if entity @s[tag=Menu] run function menu:remove_menu
function crafting:menu/block/summon_menu
execute as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:click/block/crafting
execute as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:chest_main
tellraw @s[scores={SubLocation=-1}] ["",{"text":"[Click to break crafting table]","color":"red","clickEvent":{"action":"run_command","value":"/execute at @s positioned ~ ~1.62 ~ run function skyblock:blocks/break"}}]
tag @s add BlockMenuOpen
tag @s add BlockCrafting
#------------------------------------------#