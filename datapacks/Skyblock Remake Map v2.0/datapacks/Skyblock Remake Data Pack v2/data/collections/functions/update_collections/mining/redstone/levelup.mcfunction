#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_RedstoneL matches -1 run function collections:reward_messages/mining/redstone/0
execute if score @s C_RedstoneL matches 0 run function collections:reward_messages/mining/redstone/1
execute if score @s C_RedstoneL matches 1 run function collections:reward_messages/mining/redstone/2
execute if score @s C_RedstoneL matches 2 run function collections:reward_messages/mining/redstone/3
execute if score @s C_RedstoneL matches 3 run function collections:reward_messages/mining/redstone/4
execute if score @s C_RedstoneL matches 4 run function collections:reward_messages/mining/redstone/5
execute if score @s C_RedstoneL matches 5 run function collections:reward_messages/mining/redstone/6
execute if score @s C_RedstoneL matches 6 run function collections:reward_messages/mining/redstone/7
execute if score @s C_RedstoneL matches 7 run function collections:reward_messages/mining/redstone/8
execute if score @s C_RedstoneL matches 8 run function collections:reward_messages/mining/redstone/9
execute if score @s C_RedstoneL matches 9 run function collections:reward_messages/mining/redstone/10
execute if score @s C_RedstoneL matches 10 run function collections:reward_messages/mining/redstone/11
execute if score @s C_RedstoneL matches 11 run function collections:reward_messages/mining/redstone/12
execute if score @s C_RedstoneL matches 12 run function collections:reward_messages/mining/redstone/13
execute if score @s C_RedstoneL matches 13 run function collections:reward_messages/mining/redstone/14
execute if score @s C_RedstoneL matches 14 run function collections:reward_messages/mining/redstone/15
scoreboard players add @s C_RedstoneL 1
scoreboard players add @s C_RedstoneNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_RedstoneL = @e[tag=CollectionStand,team=red] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_RedstoneL = @e[tag=CollectionStand,team=dark_red] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_RedstoneL = @e[tag=CollectionStand,team=aqua] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_RedstoneL = @e[tag=CollectionStand,team=dark_aqua] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_RedstoneL = @e[tag=CollectionStand,team=green] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_RedstoneL = @e[tag=CollectionStand,team=dark_green] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_RedstoneL = @e[tag=CollectionStand,team=yellow] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_RedstoneL = @e[tag=CollectionStand,team=blue] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_RedstoneL = @e[tag=CollectionStand,team=dark_blue] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_RedstoneL = @e[tag=CollectionStand,team=gold] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_RedstoneL = @e[tag=CollectionStand,team=gray] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_RedstoneL = @e[tag=CollectionStand,team=dark_gray] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_RedstoneL = @e[tag=CollectionStand,team=light_purple] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_RedstoneL = @e[tag=CollectionStand,team=dark_purple] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_RedstoneL = @e[tag=CollectionStand,team=black] C_RedstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_RedstoneL = @e[tag=CollectionStand,team=white] C_RedstoneL
execute if score @s C_Redstone >= @s C_RedstoneN unless score @s C_RedstoneL matches 15.. run function collections:update_collections/mining/redstone/levelup
#------------------------------------------#