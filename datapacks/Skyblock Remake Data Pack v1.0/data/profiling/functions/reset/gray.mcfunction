#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------RESETTINGS-----------------#
scoreboard players set $Gray TeamOccupied 0
scoreboard players set @a[team=gray] AccessoryBagLvl 0

team empty gray
team join gray §§§§§§§§§§§§§§§§§§§§§fProfile
function profiling:reset/gray/coins
function profiling:reset/gray/collections

execute in skyblock:private_island/gray run forceload add 0 0 0 2
execute in skyblock:private_island/gray run forceload add -1 2
execute in skyblock:private_island/gray run setblock -1 90 0 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:0,name:"minecraft:private_island"}
execute in skyblock:private_island/gray run setblock -1 91 0 minecraft:redstone_block
execute in skyblock:private_island/gray run forceload remove 0 0 0 2
execute in skyblock:private_island/gray run forceload remove -1 2
#------------------------------------------#