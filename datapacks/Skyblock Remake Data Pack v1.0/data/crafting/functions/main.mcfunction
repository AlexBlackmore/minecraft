#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------MINING CUSTOM BLOCKS------------#
execute as @e[tag=CraftingTable] at @s if block ~ ~ ~ air run function crafting:menu/block/break
#------------------------------------------#