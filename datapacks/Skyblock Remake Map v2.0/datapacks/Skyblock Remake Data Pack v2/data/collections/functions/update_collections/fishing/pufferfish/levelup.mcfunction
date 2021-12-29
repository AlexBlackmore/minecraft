#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PufferfishL matches -1 run function collections:reward_messages/fishing/pufferfish/0
execute if score @s C_PufferfishL matches 0 run function collections:reward_messages/fishing/pufferfish/1
execute if score @s C_PufferfishL matches 1 run function collections:reward_messages/fishing/pufferfish/2
execute if score @s C_PufferfishL matches 2 run function collections:reward_messages/fishing/pufferfish/3
execute if score @s C_PufferfishL matches 3 run function collections:reward_messages/fishing/pufferfish/4
execute if score @s C_PufferfishL matches 4 run function collections:reward_messages/fishing/pufferfish/5
execute if score @s C_PufferfishL matches 5 run function collections:reward_messages/fishing/pufferfish/6
execute if score @s C_PufferfishL matches 6 run function collections:reward_messages/fishing/pufferfish/7
execute if score @s C_PufferfishL matches 7 run function collections:reward_messages/fishing/pufferfish/8
execute if score @s C_PufferfishL matches 8 run function collections:reward_messages/fishing/pufferfish/9
scoreboard players add @s C_PufferfishL 1
scoreboard players add @s C_PufferfishNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_PufferfishL = @e[tag=CollectionStand,team=red] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_PufferfishL = @e[tag=CollectionStand,team=dark_red] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_PufferfishL = @e[tag=CollectionStand,team=aqua] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_PufferfishL = @e[tag=CollectionStand,team=dark_aqua] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_PufferfishL = @e[tag=CollectionStand,team=green] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_PufferfishL = @e[tag=CollectionStand,team=dark_green] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_PufferfishL = @e[tag=CollectionStand,team=yellow] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_PufferfishL = @e[tag=CollectionStand,team=blue] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_PufferfishL = @e[tag=CollectionStand,team=dark_blue] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_PufferfishL = @e[tag=CollectionStand,team=gold] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_PufferfishL = @e[tag=CollectionStand,team=gray] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_PufferfishL = @e[tag=CollectionStand,team=dark_gray] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_PufferfishL = @e[tag=CollectionStand,team=light_purple] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_PufferfishL = @e[tag=CollectionStand,team=dark_purple] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_PufferfishL = @e[tag=CollectionStand,team=black] C_PufferfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_PufferfishL = @e[tag=CollectionStand,team=white] C_PufferfishL
execute if score @s C_Pufferfish >= @s C_PufferfishN unless score @s C_PufferfishL matches 9.. run function collections:update_collections/fishing/pufferfish/levelup
#------------------------------------------#