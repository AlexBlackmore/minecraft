#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_DiamondL matches -1 run function collections:reward_messages/mining/diamond/0
execute if score @s C_DiamondL matches 0 run function collections:reward_messages/mining/diamond/1
execute if score @s C_DiamondL matches 1 run function collections:reward_messages/mining/diamond/2
execute if score @s C_DiamondL matches 2 run function collections:reward_messages/mining/diamond/3
execute if score @s C_DiamondL matches 3 run function collections:reward_messages/mining/diamond/4
execute if score @s C_DiamondL matches 4 run function collections:reward_messages/mining/diamond/5
execute if score @s C_DiamondL matches 5 run function collections:reward_messages/mining/diamond/6
execute if score @s C_DiamondL matches 6 run function collections:reward_messages/mining/diamond/7
execute if score @s C_DiamondL matches 7 run function collections:reward_messages/mining/diamond/8
execute if score @s C_DiamondL matches 8 run function collections:reward_messages/mining/diamond/9
scoreboard players add @s C_DiamondL 1
scoreboard players add @s C_DiamondNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_DiamondL = @e[tag=CollectionStand,team=red] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_DiamondL = @e[tag=CollectionStand,team=dark_red] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_DiamondL = @e[tag=CollectionStand,team=aqua] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_DiamondL = @e[tag=CollectionStand,team=dark_aqua] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_DiamondL = @e[tag=CollectionStand,team=green] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_DiamondL = @e[tag=CollectionStand,team=dark_green] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_DiamondL = @e[tag=CollectionStand,team=yellow] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_DiamondL = @e[tag=CollectionStand,team=blue] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_DiamondL = @e[tag=CollectionStand,team=dark_blue] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_DiamondL = @e[tag=CollectionStand,team=gold] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_DiamondL = @e[tag=CollectionStand,team=gray] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_DiamondL = @e[tag=CollectionStand,team=dark_gray] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_DiamondL = @e[tag=CollectionStand,team=light_purple] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_DiamondL = @e[tag=CollectionStand,team=dark_purple] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_DiamondL = @e[tag=CollectionStand,team=black] C_DiamondL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_DiamondL = @e[tag=CollectionStand,team=white] C_DiamondL
execute if score @s C_Diamond >= @s C_DiamondN unless score @s C_DiamondL matches 9.. run function collections:update_collections/mining/diamond/levelup
#------------------------------------------#