#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_LilypadL matches -1 run function collections:reward_messages/fishing/lilypad/0
execute if score @s C_LilypadL matches 0 run function collections:reward_messages/fishing/lilypad/1
execute if score @s C_LilypadL matches 1 run function collections:reward_messages/fishing/lilypad/2
execute if score @s C_LilypadL matches 2 run function collections:reward_messages/fishing/lilypad/3
execute if score @s C_LilypadL matches 3 run function collections:reward_messages/fishing/lilypad/4
execute if score @s C_LilypadL matches 4 run function collections:reward_messages/fishing/lilypad/5
execute if score @s C_LilypadL matches 5 run function collections:reward_messages/fishing/lilypad/6
execute if score @s C_LilypadL matches 6 run function collections:reward_messages/fishing/lilypad/7
execute if score @s C_LilypadL matches 7 run function collections:reward_messages/fishing/lilypad/8
execute if score @s C_LilypadL matches 8 run function collections:reward_messages/fishing/lilypad/9
scoreboard players add @s C_LilypadL 1
scoreboard players add @s C_LilypadNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_LilypadL = @e[tag=CollectionStand,team=red] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_LilypadL = @e[tag=CollectionStand,team=dark_red] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_LilypadL = @e[tag=CollectionStand,team=aqua] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_LilypadL = @e[tag=CollectionStand,team=dark_aqua] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_LilypadL = @e[tag=CollectionStand,team=green] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_LilypadL = @e[tag=CollectionStand,team=dark_green] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_LilypadL = @e[tag=CollectionStand,team=yellow] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_LilypadL = @e[tag=CollectionStand,team=blue] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_LilypadL = @e[tag=CollectionStand,team=dark_blue] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_LilypadL = @e[tag=CollectionStand,team=gold] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_LilypadL = @e[tag=CollectionStand,team=gray] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_LilypadL = @e[tag=CollectionStand,team=dark_gray] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_LilypadL = @e[tag=CollectionStand,team=light_purple] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_LilypadL = @e[tag=CollectionStand,team=dark_purple] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_LilypadL = @e[tag=CollectionStand,team=black] C_LilypadL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_LilypadL = @e[tag=CollectionStand,team=white] C_LilypadL
execute if score @s C_Lilypad >= @s C_LilypadN unless score @s C_LilypadL matches 9.. run function collections:update_collections/fishing/lilypad/levelup
#------------------------------------------#