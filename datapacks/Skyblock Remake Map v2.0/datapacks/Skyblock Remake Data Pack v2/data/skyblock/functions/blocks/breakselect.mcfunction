#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if block ~ ~ ~ barrier if entity @e[tag=Anvil,tag=BlockRevamp,distance=..7] run function anvils:normal/block/break
execute if block ~ ~ ~ command_block[facing=east,conditional=false] run function crafting:menu/block/break
execute if block ~ ~ ~ end_portal_frame[eye=false,facing=south] run function enchanting:enchanting_table/block/break
#------------------------------------------#