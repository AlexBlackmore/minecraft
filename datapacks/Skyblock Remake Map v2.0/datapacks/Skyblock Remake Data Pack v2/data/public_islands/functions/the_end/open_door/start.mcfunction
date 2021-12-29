#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------START DRAG SEQUENCE------------#
execute as @e[tag=DragonGate] at @s run function skyblock:kill
execute in skyblock:the_end run setblock 69 22 -4 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:0,name:"minecraft:end_door_6"}
execute in skyblock:the_end run setblock 69 23 -4 minecraft:redstone_block
schedule clear public_islands:the_end/open_door/1
schedule clear public_islands:the_end/open_door/2
schedule clear public_islands:the_end/open_door/3
schedule clear public_islands:the_end/open_door/4
schedule clear public_islands:the_end/open_door/5
schedule function public_islands:the_end/open_door/5 0.5s replace
#------------------------------------------#