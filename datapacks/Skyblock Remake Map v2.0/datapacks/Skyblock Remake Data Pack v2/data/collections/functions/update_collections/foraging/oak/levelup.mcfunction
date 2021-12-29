#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_OakL matches -1 run function collections:reward_messages/foraging/oak/0
execute if score @s C_OakL matches 0 run function collections:reward_messages/foraging/oak/1
execute if score @s C_OakL matches 1 run function collections:reward_messages/foraging/oak/2
execute if score @s C_OakL matches 2 run function collections:reward_messages/foraging/oak/3
execute if score @s C_OakL matches 3 run function collections:reward_messages/foraging/oak/4
execute if score @s C_OakL matches 4 run function collections:reward_messages/foraging/oak/5
execute if score @s C_OakL matches 5 run function collections:reward_messages/foraging/oak/6
execute if score @s C_OakL matches 6 run function collections:reward_messages/foraging/oak/7
execute if score @s C_OakL matches 7 run function collections:reward_messages/foraging/oak/8
execute if score @s C_OakL matches 8 run function collections:reward_messages/foraging/oak/9
scoreboard players add @s C_OakL 1
scoreboard players add @s C_OakNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_OakL = @e[tag=CollectionStand,team=red] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_OakL = @e[tag=CollectionStand,team=dark_red] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_OakL = @e[tag=CollectionStand,team=aqua] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_OakL = @e[tag=CollectionStand,team=dark_aqua] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_OakL = @e[tag=CollectionStand,team=green] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_OakL = @e[tag=CollectionStand,team=dark_green] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_OakL = @e[tag=CollectionStand,team=yellow] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_OakL = @e[tag=CollectionStand,team=blue] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_OakL = @e[tag=CollectionStand,team=dark_blue] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_OakL = @e[tag=CollectionStand,team=gold] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_OakL = @e[tag=CollectionStand,team=gray] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_OakL = @e[tag=CollectionStand,team=dark_gray] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_OakL = @e[tag=CollectionStand,team=light_purple] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_OakL = @e[tag=CollectionStand,team=dark_purple] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_OakL = @e[tag=CollectionStand,team=black] C_OakL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_OakL = @e[tag=CollectionStand,team=white] C_OakL
execute if score @s C_Oak >= @s C_OakN unless score @s C_OakL matches 9.. run function collections:update_collections/foraging/oak/levelup
#------------------------------------------#