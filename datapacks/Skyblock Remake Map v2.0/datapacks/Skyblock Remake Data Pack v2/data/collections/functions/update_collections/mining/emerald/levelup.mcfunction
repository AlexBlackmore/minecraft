#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EmeraldL matches -1 run function collections:reward_messages/mining/emerald/0
execute if score @s C_EmeraldL matches 0 run function collections:reward_messages/mining/emerald/1
execute if score @s C_EmeraldL matches 1 run function collections:reward_messages/mining/emerald/2
execute if score @s C_EmeraldL matches 2 run function collections:reward_messages/mining/emerald/3
execute if score @s C_EmeraldL matches 3 run function collections:reward_messages/mining/emerald/4
execute if score @s C_EmeraldL matches 4 run function collections:reward_messages/mining/emerald/5
execute if score @s C_EmeraldL matches 5 run function collections:reward_messages/mining/emerald/6
execute if score @s C_EmeraldL matches 6 run function collections:reward_messages/mining/emerald/7
execute if score @s C_EmeraldL matches 7 run function collections:reward_messages/mining/emerald/8
execute if score @s C_EmeraldL matches 8 run function collections:reward_messages/mining/emerald/9
scoreboard players add @s C_EmeraldL 1
scoreboard players add @s C_EmeraldNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_EmeraldL = @e[tag=CollectionStand,team=red] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_EmeraldL = @e[tag=CollectionStand,team=dark_red] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_EmeraldL = @e[tag=CollectionStand,team=aqua] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_EmeraldL = @e[tag=CollectionStand,team=dark_aqua] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_EmeraldL = @e[tag=CollectionStand,team=green] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_EmeraldL = @e[tag=CollectionStand,team=dark_green] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_EmeraldL = @e[tag=CollectionStand,team=yellow] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_EmeraldL = @e[tag=CollectionStand,team=blue] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_EmeraldL = @e[tag=CollectionStand,team=dark_blue] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_EmeraldL = @e[tag=CollectionStand,team=gold] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_EmeraldL = @e[tag=CollectionStand,team=gray] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_EmeraldL = @e[tag=CollectionStand,team=dark_gray] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_EmeraldL = @e[tag=CollectionStand,team=light_purple] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_EmeraldL = @e[tag=CollectionStand,team=dark_purple] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_EmeraldL = @e[tag=CollectionStand,team=black] C_EmeraldL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_EmeraldL = @e[tag=CollectionStand,team=white] C_EmeraldL
execute if score @s C_Emerald >= @s C_EmeraldN unless score @s C_EmeraldL matches 9.. run function collections:update_collections/mining/emerald/levelup
#------------------------------------------#