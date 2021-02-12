#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FROST WALKER---------------#
scoreboard players remove @s FrostIceTimer 1
execute if entity @s[scores={FrostIceTimer=0}] run function enchanting:enchants/frost_walker/ice_remove
#------------------------------------------#