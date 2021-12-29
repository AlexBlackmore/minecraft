#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
execute as @e[tag=MenuChest,tag=EnderMenuChest] if score @s PlayerID = @p PlayerID run function menu:ender_chest/save
execute as @e[tag=MenuChest,scores={M_CurrentPage=19}] if score @s PlayerID = @p PlayerID run function crafting:menu/save_items
execute as @e[tag=MenuChest,scores={M_CurrentPage=88}] if score @s PlayerID = @p PlayerID run function menu:save_accessory_bag
execute as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
execute as @e[tag=SlayerCraftingEvaluator] if score @s PlayerID = @p PlayerID run kill @s
tag @s remove Menu
execute as @p run function menu:reset_scores
#------------------------------------------#