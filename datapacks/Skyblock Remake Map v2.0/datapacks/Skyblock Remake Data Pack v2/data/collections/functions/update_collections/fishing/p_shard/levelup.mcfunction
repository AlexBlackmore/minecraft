#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PshardL matches -1 run function collections:reward_messages/fishing/p_shard/0
execute if score @s C_PshardL matches 0 run function collections:reward_messages/fishing/p_shard/1
execute if score @s C_PshardL matches 1 run function collections:reward_messages/fishing/p_shard/2
execute if score @s C_PshardL matches 2 run function collections:reward_messages/fishing/p_shard/3
execute if score @s C_PshardL matches 3 run function collections:reward_messages/fishing/p_shard/4
execute if score @s C_PshardL matches 4 run function collections:reward_messages/fishing/p_shard/5
scoreboard players add @s C_PshardL 1
scoreboard players add @s C_PshardNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_PshardL = @e[tag=CollectionStand,team=red] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_PshardL = @e[tag=CollectionStand,team=dark_red] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_PshardL = @e[tag=CollectionStand,team=aqua] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_PshardL = @e[tag=CollectionStand,team=dark_aqua] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_PshardL = @e[tag=CollectionStand,team=green] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_PshardL = @e[tag=CollectionStand,team=dark_green] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_PshardL = @e[tag=CollectionStand,team=yellow] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_PshardL = @e[tag=CollectionStand,team=blue] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_PshardL = @e[tag=CollectionStand,team=dark_blue] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_PshardL = @e[tag=CollectionStand,team=gold] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_PshardL = @e[tag=CollectionStand,team=gray] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_PshardL = @e[tag=CollectionStand,team=dark_gray] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_PshardL = @e[tag=CollectionStand,team=light_purple] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_PshardL = @e[tag=CollectionStand,team=dark_purple] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_PshardL = @e[tag=CollectionStand,team=black] C_PshardL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_PshardL = @e[tag=CollectionStand,team=white] C_PshardL
execute if score @s C_Pshard >= @s C_PshardN unless score @s C_PshardL matches 5.. run function collections:update_collections/fishing/p_shard/levelup
#------------------------------------------#