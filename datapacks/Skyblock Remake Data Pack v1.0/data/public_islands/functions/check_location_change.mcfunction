#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
#0=none, #1=village, 2=flower shop, 3=canvas room, 4=auction house, 5=bank, 6=forest, 7=bazaar alley, 8=colosseum, 9=library, 10=mountain, 11=wilderness, 12=fisherman's hut, 13=wizard tower, 14=high level, 15=ruins, 16=tavern, 17=graveyard, 18=coal mines, 19=farm, 20=catacombs entrance, 21=gold mine, 22=deep caverns, 23=the barn, 24=mushroom desert, 25=birch park, 26=howling cave, 27=spider's den, 28=blazing fortress, 29=the end, 30=spruce woods, 31=dark thicket, 32=savanna woodland, 33=jungle island, 34=UNOCCUPIED, 35=dragon's nest, 36=fashion shop, 37=community center, 38=blacksmith, 39=gunpowder mines, 40=lapis quarry, 41=pigmen's den, 42=slimehill, 43=diamond reserve, 44=obsidian sanctuary

execute positioned -93 0 -649 if entity @s[scores={Location=1..19},tag=!LaunchPlayer,dx=175,dy=256,dz=175] at @s in skyblock:deep_caverns run tp @s ~100172 ~38 ~99839
execute positioned -794 0 -438 unless entity @s[scores={Location=8}] unless entity @s[scores={SubLocation=33}] if entity @s[tag=!LaunchPlayer,dx=345,dy=225,dz=320] at @s run function public_islands:the_end/manual_enter

execute if entity @s[scores={Location=1..}] run scoreboard players operation @s LastSubLocation = @s SubLocation

function public_islands:location_list

execute if entity @s[scores={Location=1..}] unless score @s SubLocation = @s LastSubLocation run function public_islands:location_changed
execute if entity @s[scores={Location=20,SubLocation=0},tag=!LaunchPlayer] run function public_islands:deep_caverns/manual_leave
execute if entity @s[scores={Location=8,SubLocation=0},tag=!LaunchPlayer] run function public_islands:the_end/manual_leave
#------------------------------------------#