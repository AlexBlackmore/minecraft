#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_NetherwartL matches -1 run function collections:reward_messages/farming/nether_wart/0
execute if score @s C_NetherwartL matches 0 run function collections:reward_messages/farming/nether_wart/1
execute if score @s C_NetherwartL matches 1 run function collections:reward_messages/farming/nether_wart/2
execute if score @s C_NetherwartL matches 2 run function collections:reward_messages/farming/nether_wart/3
execute if score @s C_NetherwartL matches 3 run function collections:reward_messages/farming/nether_wart/4
execute if score @s C_NetherwartL matches 4 run function collections:reward_messages/farming/nether_wart/5
execute if score @s C_NetherwartL matches 5 run function collections:reward_messages/farming/nether_wart/6
execute if score @s C_NetherwartL matches 6 run function collections:reward_messages/farming/nether_wart/7
execute if score @s C_NetherwartL matches 7 run function collections:reward_messages/farming/nether_wart/8
execute if score @s C_NetherwartL matches 8 run function collections:reward_messages/farming/nether_wart/9
execute if score @s C_NetherwartL matches 9 run function collections:reward_messages/farming/nether_wart/10
execute if score @s C_NetherwartL matches 10 run function collections:reward_messages/farming/nether_wart/11
scoreboard players add @s C_NetherwartL 1
scoreboard players add @s C_NetherwartNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_NetherwartL = @e[tag=CollectionStand,team=red] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_NetherwartL = @e[tag=CollectionStand,team=dark_red] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_NetherwartL = @e[tag=CollectionStand,team=aqua] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_NetherwartL = @e[tag=CollectionStand,team=dark_aqua] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_NetherwartL = @e[tag=CollectionStand,team=green] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_NetherwartL = @e[tag=CollectionStand,team=dark_green] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_NetherwartL = @e[tag=CollectionStand,team=yellow] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_NetherwartL = @e[tag=CollectionStand,team=blue] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_NetherwartL = @e[tag=CollectionStand,team=dark_blue] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_NetherwartL = @e[tag=CollectionStand,team=gold] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_NetherwartL = @e[tag=CollectionStand,team=gray] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_NetherwartL = @e[tag=CollectionStand,team=dark_gray] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_NetherwartL = @e[tag=CollectionStand,team=light_purple] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_NetherwartL = @e[tag=CollectionStand,team=dark_purple] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_NetherwartL = @e[tag=CollectionStand,team=black] C_NetherwartL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_NetherwartL = @e[tag=CollectionStand,team=white] C_NetherwartL
execute if score @s C_Netherwart >= @s C_NetherwartN unless score @s C_NetherwartL matches 11.. run function collections:update_collections/farming/nether_wart/levelup
#------------------------------------------#