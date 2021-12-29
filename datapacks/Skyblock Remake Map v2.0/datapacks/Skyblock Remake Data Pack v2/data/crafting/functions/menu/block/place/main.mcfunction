#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------PLACE BLOCK----------------#
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:command_block[facing=east]{Command:"function crafting:menu/block/place/switch",auto:1b} replace minecraft:crafting_table
advancement revoke @s only crafting:place_crafting_table
#------------------------------------------#