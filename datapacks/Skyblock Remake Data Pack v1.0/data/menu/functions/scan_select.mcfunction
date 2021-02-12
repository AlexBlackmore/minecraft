#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute if block ~ ~ ~ barrier if entity @e[tag=Anvil,tag=BlockRevamp,distance=..7] run tag @s add OpenAnvil
execute if block ~ ~ ~ command_block[facing=east,conditional=false] run tag @s add OpenCrafting
execute if block ~ ~ ~ end_portal_frame[eye=false,facing=south] run tag @s add OpenEnchanting
#------------------------------------------#