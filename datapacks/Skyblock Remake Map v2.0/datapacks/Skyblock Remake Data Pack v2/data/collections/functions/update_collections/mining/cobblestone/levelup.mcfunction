#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CobblestoneL matches -1 run function collections:reward_messages/mining/cobblestone/0
execute if score @s C_CobblestoneL matches 0 run function collections:reward_messages/mining/cobblestone/1
execute if score @s C_CobblestoneL matches 1 run function collections:reward_messages/mining/cobblestone/2
execute if score @s C_CobblestoneL matches 2 run function collections:reward_messages/mining/cobblestone/3
execute if score @s C_CobblestoneL matches 3 run function collections:reward_messages/mining/cobblestone/4
execute if score @s C_CobblestoneL matches 4 run function collections:reward_messages/mining/cobblestone/5
execute if score @s C_CobblestoneL matches 5 run function collections:reward_messages/mining/cobblestone/6
execute if score @s C_CobblestoneL matches 6 run function collections:reward_messages/mining/cobblestone/7
execute if score @s C_CobblestoneL matches 7 run function collections:reward_messages/mining/cobblestone/8
execute if score @s C_CobblestoneL matches 8 run function collections:reward_messages/mining/cobblestone/9
execute if score @s C_CobblestoneL matches 9 run function collections:reward_messages/mining/cobblestone/10
scoreboard players add @s C_CobblestoneL 1
scoreboard players add @s C_CobblestoneNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CobblestoneL = @e[tag=CollectionStand,team=red] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CobblestoneL = @e[tag=CollectionStand,team=dark_red] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CobblestoneL = @e[tag=CollectionStand,team=aqua] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CobblestoneL = @e[tag=CollectionStand,team=dark_aqua] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CobblestoneL = @e[tag=CollectionStand,team=green] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CobblestoneL = @e[tag=CollectionStand,team=dark_green] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CobblestoneL = @e[tag=CollectionStand,team=yellow] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CobblestoneL = @e[tag=CollectionStand,team=blue] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CobblestoneL = @e[tag=CollectionStand,team=dark_blue] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CobblestoneL = @e[tag=CollectionStand,team=gold] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CobblestoneL = @e[tag=CollectionStand,team=gray] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CobblestoneL = @e[tag=CollectionStand,team=dark_gray] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CobblestoneL = @e[tag=CollectionStand,team=light_purple] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CobblestoneL = @e[tag=CollectionStand,team=dark_purple] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CobblestoneL = @e[tag=CollectionStand,team=black] C_CobblestoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CobblestoneL = @e[tag=CollectionStand,team=white] C_CobblestoneL
execute if score @s C_Cobblestone >= @s C_CobblestoneN unless score @s C_CobblestoneL matches 10.. run function collections:update_collections/mining/cobblestone/levelup
#------------------------------------------#