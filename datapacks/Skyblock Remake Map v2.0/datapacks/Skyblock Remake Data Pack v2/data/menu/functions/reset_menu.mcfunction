#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute if entity @s[scores={M_CurrentPage=88}] run function menu:save_accessory_bag
execute if entity @s[scores={M_CurrentPage=19}] run function crafting:menu/save_items
execute if entity @s[tag=EnderMenuChest] run function menu:ender_chest/return_home

scoreboard players set @s M_CurrentPage -1
scoreboard players set @s M_PageDelay 1
function menu:menus/mainmenu
scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
function menu:menus/mainmenu
#------------------------------------------#