#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_DarkoakL matches -1 run function collections:reward_messages/foraging/dark_oak/0
execute if score @s C_DarkoakL matches 0 run function collections:reward_messages/foraging/dark_oak/1
execute if score @s C_DarkoakL matches 1 run function collections:reward_messages/foraging/dark_oak/2
execute if score @s C_DarkoakL matches 2 run function collections:reward_messages/foraging/dark_oak/3
execute if score @s C_DarkoakL matches 3 run function collections:reward_messages/foraging/dark_oak/4
execute if score @s C_DarkoakL matches 4 run function collections:reward_messages/foraging/dark_oak/5
execute if score @s C_DarkoakL matches 5 run function collections:reward_messages/foraging/dark_oak/6
execute if score @s C_DarkoakL matches 6 run function collections:reward_messages/foraging/dark_oak/7
execute if score @s C_DarkoakL matches 7 run function collections:reward_messages/foraging/dark_oak/8
execute if score @s C_DarkoakL matches 8 run function collections:reward_messages/foraging/dark_oak/9
scoreboard players add @s C_DarkoakL 1
scoreboard players add @s C_DarkoakNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_DarkoakL = @e[tag=CollectionStand,team=red] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_DarkoakL = @e[tag=CollectionStand,team=dark_red] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_DarkoakL = @e[tag=CollectionStand,team=aqua] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_DarkoakL = @e[tag=CollectionStand,team=dark_aqua] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_DarkoakL = @e[tag=CollectionStand,team=green] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_DarkoakL = @e[tag=CollectionStand,team=dark_green] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_DarkoakL = @e[tag=CollectionStand,team=yellow] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_DarkoakL = @e[tag=CollectionStand,team=blue] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_DarkoakL = @e[tag=CollectionStand,team=dark_blue] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_DarkoakL = @e[tag=CollectionStand,team=gold] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_DarkoakL = @e[tag=CollectionStand,team=gray] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_DarkoakL = @e[tag=CollectionStand,team=dark_gray] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_DarkoakL = @e[tag=CollectionStand,team=light_purple] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_DarkoakL = @e[tag=CollectionStand,team=dark_purple] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_DarkoakL = @e[tag=CollectionStand,team=black] C_DarkoakL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_DarkoakL = @e[tag=CollectionStand,team=white] C_DarkoakL
execute if score @s C_Darkoak >= @s C_DarkoakN unless score @s C_DarkoakL matches 9.. run function collections:update_collections/foraging/dark_oak/levelup
#------------------------------------------#