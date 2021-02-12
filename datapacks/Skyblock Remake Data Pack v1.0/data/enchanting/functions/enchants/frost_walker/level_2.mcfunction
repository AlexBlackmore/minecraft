#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FROST WALKER---------------#
execute align xyz positioned ~-2 ~-2 ~-2 as @e[tag=FrostWalkerIce,dx=4,dy=1,dz=4] at @s if block ~ ~ ~ water[level=0] run function enchanting:enchants/frost_walker/keep_ice
fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 minecraft:command_block[facing=down]{Command:"function enchanting:enchants/frost_walker/place_ice",auto:1b} replace water[level=0]
#------------------------------------------#