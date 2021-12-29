#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EndstoneL matches -1 run function collections:reward_messages/mining/end_stone/0
execute if score @s C_EndstoneL matches 0 run function collections:reward_messages/mining/end_stone/1
execute if score @s C_EndstoneL matches 1 run function collections:reward_messages/mining/end_stone/2
execute if score @s C_EndstoneL matches 2 run function collections:reward_messages/mining/end_stone/3
execute if score @s C_EndstoneL matches 3 run function collections:reward_messages/mining/end_stone/4
execute if score @s C_EndstoneL matches 4 run function collections:reward_messages/mining/end_stone/5
execute if score @s C_EndstoneL matches 5 run function collections:reward_messages/mining/end_stone/6
execute if score @s C_EndstoneL matches 6 run function collections:reward_messages/mining/end_stone/7
execute if score @s C_EndstoneL matches 7 run function collections:reward_messages/mining/end_stone/8
execute if score @s C_EndstoneL matches 8 run function collections:reward_messages/mining/end_stone/9
execute if score @s C_EndstoneL matches 9 run function collections:reward_messages/mining/end_stone/10
scoreboard players add @s C_EndstoneL 1
scoreboard players add @s C_EndstoneNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_EndstoneL = @e[tag=CollectionStand,team=red] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_EndstoneL = @e[tag=CollectionStand,team=dark_red] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_EndstoneL = @e[tag=CollectionStand,team=aqua] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_EndstoneL = @e[tag=CollectionStand,team=dark_aqua] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_EndstoneL = @e[tag=CollectionStand,team=green] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_EndstoneL = @e[tag=CollectionStand,team=dark_green] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_EndstoneL = @e[tag=CollectionStand,team=yellow] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_EndstoneL = @e[tag=CollectionStand,team=blue] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_EndstoneL = @e[tag=CollectionStand,team=dark_blue] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_EndstoneL = @e[tag=CollectionStand,team=gold] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_EndstoneL = @e[tag=CollectionStand,team=gray] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_EndstoneL = @e[tag=CollectionStand,team=dark_gray] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_EndstoneL = @e[tag=CollectionStand,team=light_purple] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_EndstoneL = @e[tag=CollectionStand,team=dark_purple] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_EndstoneL = @e[tag=CollectionStand,team=black] C_EndstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_EndstoneL = @e[tag=CollectionStand,team=white] C_EndstoneL
execute if score @s C_Endstone >= @s C_EndstoneN unless score @s C_EndstoneL matches 10.. run function collections:update_collections/mining/end_stone/levelup
#------------------------------------------#