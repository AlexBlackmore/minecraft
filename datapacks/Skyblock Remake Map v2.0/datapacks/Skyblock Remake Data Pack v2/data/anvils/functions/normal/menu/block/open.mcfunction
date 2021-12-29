#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if entity @s[tag=Menu] run function menu:remove_menu
function anvils:normal/menu/block/summon_menu
execute as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run scoreboard players set @s M_NewPage 86
execute as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:chest_main
tellraw @s[scores={SubLocation=-1}] ["",{"text":"[Click to break anvil]","color":"red","clickEvent":{"action":"run_command","value":"/execute at @s positioned ~ ~1.62 ~ run function skyblock:blocks/break"}}]
tag @s add BlockMenuOpen
tag @s add BlockAnvil
#------------------------------------------#