#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_WheatL matches -1 run function collections:reward_messages/farming/wheat/0
execute if score @s C_WheatL matches 0 run function collections:reward_messages/farming/wheat/1
execute if score @s C_WheatL matches 1 run function collections:reward_messages/farming/wheat/2
execute if score @s C_WheatL matches 2 run function collections:reward_messages/farming/wheat/3
execute if score @s C_WheatL matches 3 run function collections:reward_messages/farming/wheat/4
execute if score @s C_WheatL matches 4 run function collections:reward_messages/farming/wheat/5
execute if score @s C_WheatL matches 5 run function collections:reward_messages/farming/wheat/6
execute if score @s C_WheatL matches 6 run function collections:reward_messages/farming/wheat/7
execute if score @s C_WheatL matches 7 run function collections:reward_messages/farming/wheat/8
execute if score @s C_WheatL matches 8 run function collections:reward_messages/farming/wheat/9
execute if score @s C_WheatL matches 9 run function collections:reward_messages/farming/wheat/10
execute if score @s C_WheatL matches 10 run function collections:reward_messages/farming/wheat/11
scoreboard players add @s C_WheatL 1
scoreboard players add @s C_WheatNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_WheatL = @e[tag=CollectionStand,team=red] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_WheatL = @e[tag=CollectionStand,team=dark_red] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_WheatL = @e[tag=CollectionStand,team=aqua] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_WheatL = @e[tag=CollectionStand,team=dark_aqua] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_WheatL = @e[tag=CollectionStand,team=green] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_WheatL = @e[tag=CollectionStand,team=dark_green] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_WheatL = @e[tag=CollectionStand,team=yellow] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_WheatL = @e[tag=CollectionStand,team=blue] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_WheatL = @e[tag=CollectionStand,team=dark_blue] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_WheatL = @e[tag=CollectionStand,team=gold] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_WheatL = @e[tag=CollectionStand,team=gray] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_WheatL = @e[tag=CollectionStand,team=dark_gray] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_WheatL = @e[tag=CollectionStand,team=light_purple] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_WheatL = @e[tag=CollectionStand,team=dark_purple] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_WheatL = @e[tag=CollectionStand,team=black] C_WheatL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_WheatL = @e[tag=CollectionStand,team=white] C_WheatL
execute if score @s C_Wheat >= @s C_WheatN unless score @s C_WheatL matches 11.. run function collections:update_collections/farming/wheat/levelup
#------------------------------------------#