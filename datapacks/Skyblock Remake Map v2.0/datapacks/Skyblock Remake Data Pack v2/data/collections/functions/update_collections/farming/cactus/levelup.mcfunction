#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CactusL matches -1 run function collections:reward_messages/farming/cactus/0
execute if score @s C_CactusL matches 0 run function collections:reward_messages/farming/cactus/1
execute if score @s C_CactusL matches 1 run function collections:reward_messages/farming/cactus/2
execute if score @s C_CactusL matches 2 run function collections:reward_messages/farming/cactus/3
execute if score @s C_CactusL matches 3 run function collections:reward_messages/farming/cactus/4
execute if score @s C_CactusL matches 4 run function collections:reward_messages/farming/cactus/5
execute if score @s C_CactusL matches 5 run function collections:reward_messages/farming/cactus/6
execute if score @s C_CactusL matches 6 run function collections:reward_messages/farming/cactus/7
execute if score @s C_CactusL matches 7 run function collections:reward_messages/farming/cactus/8
execute if score @s C_CactusL matches 8 run function collections:reward_messages/farming/cactus/9
scoreboard players add @s C_CactusL 1
scoreboard players add @s C_CactusNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CactusL = @e[tag=CollectionStand,team=red] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CactusL = @e[tag=CollectionStand,team=dark_red] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CactusL = @e[tag=CollectionStand,team=aqua] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CactusL = @e[tag=CollectionStand,team=dark_aqua] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CactusL = @e[tag=CollectionStand,team=green] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CactusL = @e[tag=CollectionStand,team=dark_green] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CactusL = @e[tag=CollectionStand,team=yellow] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CactusL = @e[tag=CollectionStand,team=blue] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CactusL = @e[tag=CollectionStand,team=dark_blue] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CactusL = @e[tag=CollectionStand,team=gold] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CactusL = @e[tag=CollectionStand,team=gray] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CactusL = @e[tag=CollectionStand,team=dark_gray] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CactusL = @e[tag=CollectionStand,team=light_purple] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CactusL = @e[tag=CollectionStand,team=dark_purple] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CactusL = @e[tag=CollectionStand,team=black] C_CactusL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CactusL = @e[tag=CollectionStand,team=white] C_CactusL
execute if score @s C_Cactus >= @s C_CactusN unless score @s C_CactusL matches 9.. run function collections:update_collections/farming/cactus/levelup
#------------------------------------------#