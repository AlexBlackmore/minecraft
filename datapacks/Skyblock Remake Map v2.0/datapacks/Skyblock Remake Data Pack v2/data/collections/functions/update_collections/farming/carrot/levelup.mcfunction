#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CarrotL matches -1 run function collections:reward_messages/farming/carrot/0
execute if score @s C_CarrotL matches 0 run function collections:reward_messages/farming/carrot/1
execute if score @s C_CarrotL matches 1 run function collections:reward_messages/farming/carrot/2
execute if score @s C_CarrotL matches 2 run function collections:reward_messages/farming/carrot/3
execute if score @s C_CarrotL matches 3 run function collections:reward_messages/farming/carrot/4
execute if score @s C_CarrotL matches 4 run function collections:reward_messages/farming/carrot/5
execute if score @s C_CarrotL matches 5 run function collections:reward_messages/farming/carrot/6
execute if score @s C_CarrotL matches 6 run function collections:reward_messages/farming/carrot/7
execute if score @s C_CarrotL matches 7 run function collections:reward_messages/farming/carrot/8
execute if score @s C_CarrotL matches 8 run function collections:reward_messages/farming/carrot/9
scoreboard players add @s C_CarrotL 1
scoreboard players add @s C_CarrotNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CarrotL = @e[tag=CollectionStand,team=red] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CarrotL = @e[tag=CollectionStand,team=dark_red] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CarrotL = @e[tag=CollectionStand,team=aqua] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CarrotL = @e[tag=CollectionStand,team=dark_aqua] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CarrotL = @e[tag=CollectionStand,team=green] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CarrotL = @e[tag=CollectionStand,team=dark_green] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CarrotL = @e[tag=CollectionStand,team=yellow] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CarrotL = @e[tag=CollectionStand,team=blue] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CarrotL = @e[tag=CollectionStand,team=dark_blue] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CarrotL = @e[tag=CollectionStand,team=gold] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CarrotL = @e[tag=CollectionStand,team=gray] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CarrotL = @e[tag=CollectionStand,team=dark_gray] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CarrotL = @e[tag=CollectionStand,team=light_purple] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CarrotL = @e[tag=CollectionStand,team=dark_purple] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CarrotL = @e[tag=CollectionStand,team=black] C_CarrotL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CarrotL = @e[tag=CollectionStand,team=white] C_CarrotL
execute if score @s C_Carrot >= @s C_CarrotN unless score @s C_CarrotL matches 9.. run function collections:update_collections/farming/carrot/levelup
#------------------------------------------#