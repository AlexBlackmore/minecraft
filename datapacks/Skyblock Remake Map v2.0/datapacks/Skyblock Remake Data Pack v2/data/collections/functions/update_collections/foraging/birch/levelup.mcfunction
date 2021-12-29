#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_BirchL matches -1 run function collections:reward_messages/foraging/birch/0
execute if score @s C_BirchL matches 0 run function collections:reward_messages/foraging/birch/1
execute if score @s C_BirchL matches 1 run function collections:reward_messages/foraging/birch/2
execute if score @s C_BirchL matches 2 run function collections:reward_messages/foraging/birch/3
execute if score @s C_BirchL matches 3 run function collections:reward_messages/foraging/birch/4
execute if score @s C_BirchL matches 4 run function collections:reward_messages/foraging/birch/5
execute if score @s C_BirchL matches 5 run function collections:reward_messages/foraging/birch/6
execute if score @s C_BirchL matches 6 run function collections:reward_messages/foraging/birch/7
execute if score @s C_BirchL matches 7 run function collections:reward_messages/foraging/birch/8
execute if score @s C_BirchL matches 8 run function collections:reward_messages/foraging/birch/9
scoreboard players add @s C_BirchL 1
scoreboard players add @s C_BirchNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_BirchL = @e[tag=CollectionStand,team=red] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_BirchL = @e[tag=CollectionStand,team=dark_red] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_BirchL = @e[tag=CollectionStand,team=aqua] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_BirchL = @e[tag=CollectionStand,team=dark_aqua] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_BirchL = @e[tag=CollectionStand,team=green] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_BirchL = @e[tag=CollectionStand,team=dark_green] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_BirchL = @e[tag=CollectionStand,team=yellow] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_BirchL = @e[tag=CollectionStand,team=blue] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_BirchL = @e[tag=CollectionStand,team=dark_blue] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_BirchL = @e[tag=CollectionStand,team=gold] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_BirchL = @e[tag=CollectionStand,team=gray] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_BirchL = @e[tag=CollectionStand,team=dark_gray] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_BirchL = @e[tag=CollectionStand,team=light_purple] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_BirchL = @e[tag=CollectionStand,team=dark_purple] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_BirchL = @e[tag=CollectionStand,team=black] C_BirchL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_BirchL = @e[tag=CollectionStand,team=white] C_BirchL
execute if score @s C_Birch >= @s C_BirchN unless score @s C_BirchL matches 9.. run function collections:update_collections/foraging/birch/levelup
#------------------------------------------#