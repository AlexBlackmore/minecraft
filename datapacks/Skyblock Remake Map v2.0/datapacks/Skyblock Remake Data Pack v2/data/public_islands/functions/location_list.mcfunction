#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
#0=none, #1=village, 2=flower shop, 3=canvas room, 4=auction house, 5=bank, 6=forest, 7=bazaar alley, 8=colosseum, 9=library, 10=mountain, 11=wilderness, 12=fisherman's hut, 13=wizard tower, 14=high level, 15=ruins, 16=tavern, 17=graveyard, 18=coal mines, 19=farm, 20=catacombs entrance, 21=gold mine, 22=deep caverns, 23=the barn, 24=mushroom desert, 25=birch park, 26=howling cave, 27=spider's den, 28=blazing fortress, 29=the end, 30=spruce woods, 31=dark thicket, 32=savanna woodland, 33=jungle island, 34=UNOCCUPIED, 35=dragon's nest, 36=fashion shop, 37=community center, 38=blacksmith, 39=gunpowder mines, 40=lapis quarry, 41=pigmen's den, 42=slimehill, 43=diamond reserve, 44=obsidian sanctuary, 45=dwarven mines, 46=the forge, 47=forge basin, 48=lava springs, 49=palace bridge, 50=royal palace, 51=aristocrat passage, 52=hanging court, 53=cliffside veins, 54=rampart's quarry, 55=divan's gateway, 56=far reserve, 57=goblin's burrows, 58=upper mine, 59=great ice wall, 60=the mist, 61=royal mines, 62=the lift, 63=dwarven village, 64=dwarven tavern, 65=gates to the mines, 66=c&c minecarts co, 67=miner's guild, 68=grand library, 69=barracks of heroes, 70=royal quarters
execute if entity @s[scores={Location=1..}] unless score @s P_Y matches ..-1 unless entity @s[scores={SubLocation=3}] run scoreboard players set @s SubLocation 0
execute positioned -129 55 -137 run scoreboard players set @s[scores={Location=1..},dx=195,dy=80,dz=134] SubLocation 1
execute positioned -16 68 -27 run scoreboard players set @s[scores={Location=1..},dx=18,dy=50,dz=20] SubLocation 2
execute positioned -60 68 -102 run scoreboard players set @s[scores={Location=1..},dx=39,dy=50,dz=20] SubLocation 4
execute positioned -31 68 -69 run scoreboard players set @s[scores={Location=1..},dx=10,dy=50,dz=12] SubLocation 5
execute positioned -248 60 -81 run scoreboard players set @s[scores={Location=1..},dx=164,dy=100,dz=102] SubLocation 6
execute positioned -129 65 -80 run scoreboard players set @s[scores={Location=1..},dx=45,dy=50,dz=23] SubLocation 1
execute positioned -44 68 -79 run scoreboard players set @s[scores={Location=1..},dx=22,dy=50,dz=7] SubLocation 7
execute positioned 52 55 -73 run scoreboard players set @s[scores={Location=1..},dx=130,dy=80,dz=53] SubLocation 8
execute positioned 68 55 -109 run scoreboard players set @s[scores={Location=1..},dx=114,dy=80,dz=34] SubLocation 8
execute positioned -45 68 -119 run scoreboard players set @s[scores={Location=1..},dx=14,dy=50,dz=14] SubLocation 9
execute positioned -82 55 -1 run scoreboard players set @s[scores={Location=1..},dx=148,dy=160,dz=116] SubLocation 10
execute positioned 68 52 -18 run scoreboard players set @s[scores={Location=1..},dx=140,dy=100,dz=240] SubLocation 11
execute positioned 120 55 27 run scoreboard players set @s[scores={Location=1..},dx=80,dy=80,dz=68] SubLocation 12
execute positioned 29 68 64 run scoreboard players set @s[scores={Location=1..},dx=20,dy=100,dz=25] SubLocation 13
execute positioned -82 60 117 run scoreboard players set @s[scores={Location=1..},dx=145,dy=100,dz=100] SubLocation 14
execute positioned -269 60 23 run scoreboard players set @s[scores={Location=1..},dx=185,dy=100,dz=150] SubLocation 15
execute positioned -299 60 59 run scoreboard players set @s[scores={Location=1..},dx=28,dy=100,dz=60] SubLocation 15
execute positioned -84 65 -61 run scoreboard players set @s[scores={Location=1..},dx=12,dy=50,dz=11] SubLocation 16
execute positioned -219 72 -136 run scoreboard players set @s[scores={Location=1..},dx=135,dy=50,dz=55] SubLocation 17
execute positioned -173 72 -232 run scoreboard players set @s[scores={Location=1..},dx=103,dy=50,dz=94] SubLocation 17
execute positioned -83 72 -137 run scoreboard players set @s[scores={Location=1..},dx=18,dy=50,dz=29] SubLocation 17
execute positioned -186 38 -167 run scoreboard players set @s[scores={Location=1..},dx=109,dy=28,dz=95] SubLocation 18
execute positioned -196 65 -111 run scoreboard players set @s[scores={Location=1..},dx=15,dy=5,dz=10] SubLocation 18
execute positioned -80 38 -144 run scoreboard players set @s[scores={Location=1..},dx=35,dy=28,dz=20] SubLocation 18
execute positioned -78 38 -134 run scoreboard players set @s[scores={Location=1..},dx=16,dy=28,dz=32] SubLocation 18
execute positioned -69 55 -238 run scoreboard players set @s[scores={Location=1..},dx=84,dy=50,dz=100] SubLocation 18
execute positioned 17 60 -239 run scoreboard players set @s[scores={Location=1..},dx=34,dy=50,dz=102] SubLocation 19
execute positioned 52 60 -214 run scoreboard players set @s[scores={Location=1..},dx=14,dy=50,dz=97] SubLocation 19
execute positioned 68 60 -196 run scoreboard players set @s[scores={Location=1..},dx=85,dy=50,dz=85] SubLocation 19
execute positioned -96 53 -143 run scoreboard players set @s[scores={Location=1..},dx=21,dy=10,dz=25] SubLocation 20
execute positioned -103 16 -406 run scoreboard players set @s[scores={Location=1..},dx=150,dy=140,dz=140] SubLocation 21
execute positioned 100079 0 99190 run scoreboard players set @s[scores={Location=1..},dx=175,dy=256,dz=175] SubLocation 22
execute positioned 83 55 -329 run scoreboard players set @s[scores={Location=1..},dx=140,dy=140,dz=145] SubLocation 23
execute positioned 124 60 -470 run scoreboard players set @s[scores={Location=1..},dx=140,dy=70,dz=135] SubLocation 24
execute positioned -487 81 -145 run scoreboard players set @s[scores={Location=1..},dx=180,dy=85,dz=235] SubLocation 25
execute positioned -306 55 -94 run scoreboard players set @s[scores={Location=1..},dx=40,dy=55,dz=133] SubLocation 25
execute positioned -402 50 -106 run scoreboard players set @s[scores={Location=1..},dx=65,dy=37,dz=145] SubLocation 26
execute positioned -402 65 -345 run scoreboard players set @s[scores={Location=1..},dx=185,dy=165,dz=211] SubLocation 27
execute positioned -257 65 -370 run scoreboard players set @s[scores={Location=1..},dx=130,dy=165,dz=160] SubLocation 27
execute positioned -444 35 -766 run scoreboard players set @s[scores={Location=1..},dx=275,dy=195,dz=393] SubLocation 28
execute if entity @s[scores={Location=1..,SubLocation=25}] if predicate minecraft:biome_check/snowy_tundra run scoreboard players set @s SubLocation 30
execute if entity @s[scores={Location=1..,SubLocation=25}] if predicate minecraft:biome_check/dark_forest run scoreboard players set @s SubLocation 31
execute if entity @s[scores={Location=1..,SubLocation=25}] if predicate minecraft:biome_check/savanna run scoreboard players set @s SubLocation 32
execute if entity @s[scores={Location=1..,SubLocation=25}] if predicate minecraft:biome_check/jungle run scoreboard players set @s SubLocation 33
#execute positioned 55 25 -82 run scoreboard players set @s[scores={Location=1..},dx=53,dy=29,dz=53] SubLocation 34
execute positioned 18 60 -46 run scoreboard players set @s[scores={Location=1..},dx=10,dy=100,dz=7] SubLocation 36
execute positioned -6 60 -119 run scoreboard players set @s[scores={Location=1..},dx=18,dy=100,dz=19] SubLocation 37
execute positioned -33 60 -136 run scoreboard players set @s[scores={Location=1..},dx=8,dy=100,dz=13] SubLocation 38
execute positioned 100124 134 99222 run scoreboard players set @s[scores={Location=1..},dx=97,dy=41,dz=83] SubLocation 39
execute positioned 100104 113 99235 run scoreboard players set @s[scores={Location=1..},dx=105,dy=19,dz=85] SubLocation 40
execute positioned 100137 76 99232 run scoreboard players set @s[scores={Location=1..},dx=72,dy=35,dz=91] SubLocation 41
execute positioned 100119 46 99221 run scoreboard players set @s[scores={Location=1..},dx=90,dy=28,dz=116] SubLocation 42
execute positioned 100097 21 99226 run scoreboard players set @s[scores={Location=1..},dx=112,dy=23,dz=108] SubLocation 43
execute positioned 100086 5 99234 run scoreboard players set @s[scores={Location=1..},dx=123,dy=14,dz=108] SubLocation 44
execute positioned -123 0 -162 run scoreboard players set @s[scores={Location=8},dx=345,dy=225,dz=320] SubLocation 29
execute positioned -78 5 -75 run scoreboard players set @s[scores={Location=8},dx=151,dy=102,dz=153] SubLocation 35
#------------------------------------------#