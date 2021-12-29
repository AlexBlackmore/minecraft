#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GoldL matches -1 run function collections:reward_messages/mining/gold/0
execute if score @s C_GoldL matches 0 run function collections:reward_messages/mining/gold/1
execute if score @s C_GoldL matches 1 run function collections:reward_messages/mining/gold/2
execute if score @s C_GoldL matches 2 run function collections:reward_messages/mining/gold/3
execute if score @s C_GoldL matches 3 run function collections:reward_messages/mining/gold/4
execute if score @s C_GoldL matches 4 run function collections:reward_messages/mining/gold/5
execute if score @s C_GoldL matches 5 run function collections:reward_messages/mining/gold/6
execute if score @s C_GoldL matches 6 run function collections:reward_messages/mining/gold/7
execute if score @s C_GoldL matches 7 run function collections:reward_messages/mining/gold/8
execute if score @s C_GoldL matches 8 run function collections:reward_messages/mining/gold/9
scoreboard players add @s C_GoldL 1
scoreboard players add @s C_GoldNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_GoldL = @e[tag=CollectionStand,team=red] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_GoldL = @e[tag=CollectionStand,team=dark_red] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_GoldL = @e[tag=CollectionStand,team=aqua] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_GoldL = @e[tag=CollectionStand,team=dark_aqua] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_GoldL = @e[tag=CollectionStand,team=green] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_GoldL = @e[tag=CollectionStand,team=dark_green] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_GoldL = @e[tag=CollectionStand,team=yellow] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_GoldL = @e[tag=CollectionStand,team=blue] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_GoldL = @e[tag=CollectionStand,team=dark_blue] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_GoldL = @e[tag=CollectionStand,team=gold] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_GoldL = @e[tag=CollectionStand,team=gray] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_GoldL = @e[tag=CollectionStand,team=dark_gray] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_GoldL = @e[tag=CollectionStand,team=light_purple] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_GoldL = @e[tag=CollectionStand,team=dark_purple] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_GoldL = @e[tag=CollectionStand,team=black] C_GoldL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_GoldL = @e[tag=CollectionStand,team=white] C_GoldL
execute if score @s C_Gold >= @s C_GoldN unless score @s C_GoldL matches 9.. run function collections:update_collections/mining/gold/levelup
#------------------------------------------#