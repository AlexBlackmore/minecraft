#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if entity @s[scores={LastSubLocation=35},tag=End_DragScoreboard] run function public_islands:the_end/scoreboard/remove_stats
execute if entity @s[scores={SubLocation=0}] run function profiling:set_location/none
execute if entity @s[scores={SubLocation=1}] run function profiling:set_location/village
execute if entity @s[scores={SubLocation=2}] run function profiling:set_location/flower_shop
execute if entity @s[scores={SubLocation=4}] run function profiling:set_location/auction_house
execute if entity @s[scores={SubLocation=5}] run function profiling:set_location/bank
execute if entity @s[scores={SubLocation=6}] run function profiling:set_location/forest
execute if entity @s[scores={SubLocation=7}] run function profiling:set_location/bazaar_alley
execute if entity @s[scores={SubLocation=8}] run function profiling:set_location/colosseum
execute if entity @s[scores={SubLocation=9}] run function profiling:set_location/library
execute if entity @s[scores={SubLocation=10}] run function profiling:set_location/mountain
execute if entity @s[scores={SubLocation=11}] run function profiling:set_location/wilderness
execute if entity @s[scores={SubLocation=12}] run function profiling:set_location/fishermans_hut
execute if entity @s[scores={SubLocation=13}] run function profiling:set_location/wizard_tower
execute if entity @s[scores={SubLocation=14}] run function profiling:set_location/high_level
execute if entity @s[scores={SubLocation=15}] run function profiling:set_location/ruins
execute if entity @s[scores={SubLocation=16}] run function profiling:set_location/tavern
execute if entity @s[scores={SubLocation=17}] run function profiling:set_location/graveyard
execute if entity @s[scores={SubLocation=18}] run function profiling:set_location/coal_mines
execute if entity @s[scores={SubLocation=19}] run function profiling:set_location/farm
execute if entity @s[scores={SubLocation=20}] run function profiling:set_location/catacombs_entrance
execute if entity @s[scores={SubLocation=21}] run function profiling:set_location/gold_mine
execute if entity @s[scores={SubLocation=22}] run function profiling:set_location/deep_caverns
execute if entity @s[scores={SubLocation=23}] run function profiling:set_location/the_barn
execute if entity @s[scores={SubLocation=24}] run function profiling:set_location/mushroom_desert
execute if entity @s[scores={SubLocation=25}] run function profiling:set_location/birch_park
execute if entity @s[scores={SubLocation=26}] run function profiling:set_location/howling_cave
execute if entity @s[scores={SubLocation=27}] run function profiling:set_location/spiders_den
execute if entity @s[scores={SubLocation=28}] run function profiling:set_location/blazing_fortress
execute if entity @s[scores={SubLocation=29}] run function profiling:set_location/the_end
execute if entity @s[scores={SubLocation=30}] run function profiling:set_location/spruce_woods
execute if entity @s[scores={SubLocation=31}] run function profiling:set_location/dark_thicket
execute if entity @s[scores={SubLocation=32}] run function profiling:set_location/savanna_woodland
execute if entity @s[scores={SubLocation=33}] run function profiling:set_location/jungle_island
#execute if entity @s[scores={SubLocation=34}] run function profiling:set_location/team_selection
execute if entity @s[scores={SubLocation=35}] run function profiling:set_location/dragons_nest
execute if entity @s[scores={SubLocation=36}] run function profiling:set_location/fashion_shop
execute if entity @s[scores={SubLocation=37}] run function profiling:set_location/community_center
execute if entity @s[scores={SubLocation=38}] run function profiling:set_location/blacksmith
execute if entity @s[scores={SubLocation=39}] run function profiling:set_location/gunpowder_mines
execute if entity @s[scores={SubLocation=40}] run function profiling:set_location/lapis_quarry
execute if entity @s[scores={SubLocation=41}] run function profiling:set_location/pigmens_den
execute if entity @s[scores={SubLocation=42}] run function profiling:set_location/slimehill
execute if entity @s[scores={SubLocation=43}] run function profiling:set_location/diamond_reserve
execute if entity @s[scores={SubLocation=44}] run function profiling:set_location/obsidian_sanctuary
#------------------------------------------#