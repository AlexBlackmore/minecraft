#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------ENDER CHESTS---------------#
execute in minecraft:overworld run data modify block 29999977 1 29832 Items set from entity @s Items
execute as @p in minecraft:overworld run loot replace entity @s enderchest.0 mine 29999977 1 29832 minecraft:diamond_pickaxe{drop_contents:true}
tag @s remove EnderMenuChest
#------------------------------------------#