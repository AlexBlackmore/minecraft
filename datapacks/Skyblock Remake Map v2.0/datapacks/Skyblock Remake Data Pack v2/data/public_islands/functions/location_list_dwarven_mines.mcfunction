#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
#0=none, #1=village, 2=flower shop, 3=canvas room, 4=auction house, 5=bank, 6=forest, 7=bazaar alley, 8=colosseum, 9=library, 10=mountain, 11=wilderness, 12=fisherman's hut, 13=wizard tower, 14=high level, 15=ruins, 16=tavern, 17=graveyard, 18=coal mines, 19=farm, 20=catacombs entrance, 21=gold mine, 22=deep caverns, 23=the barn, 24=mushroom desert, 25=birch park, 26=howling cave, 27=spider's den, 28=blazing fortress, 29=the end, 30=spruce woods, 31=dark thicket, 32=savanna woodland, 33=jungle island, 34=UNOCCUPIED, 35=dragon's nest, 36=fashion shop, 37=community center, 38=blacksmith, 39=gunpowder mines, 40=lapis quarry, 41=pigmen's den, 42=slimehill, 43=diamond reserve, 44=obsidian sanctuary, 45=dwarven mines, 46=the forge, 47=forge basin, 48=lava springs, 49=palace bridge, 50=royal palace, 51=aristocrat passage, 52=hanging court, 53=cliffside veins, 54=rampart's quarry, 55=divan's gateway, 56=far reserve, 57=goblin's burrows, 58=upper mine, 59=great ice wall, 60=the mist, 61=royal mines, 62=the lift, 63=dwarven village, 64=dwarven tavern, 65=gates to the mines, 66=c&c minecarts co, 67=miner's guild, 68=grand library, 69=barracks of heroes, 70=royal quarters
execute if entity @s[scores={Location=1..}] unless score @s P_Y matches ..-1 unless entity @s[scores={SubLocation=3}] run scoreboard players set @s SubLocation 0

#------------------------------------------#