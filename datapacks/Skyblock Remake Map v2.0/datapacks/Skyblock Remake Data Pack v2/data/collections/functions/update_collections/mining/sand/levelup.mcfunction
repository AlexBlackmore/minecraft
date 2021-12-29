#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SandL matches -1 run function collections:reward_messages/mining/sand/0
execute if score @s C_SandL matches 0 run function collections:reward_messages/mining/sand/1
execute if score @s C_SandL matches 1 run function collections:reward_messages/mining/sand/2
execute if score @s C_SandL matches 2 run function collections:reward_messages/mining/sand/3
execute if score @s C_SandL matches 3 run function collections:reward_messages/mining/sand/4
execute if score @s C_SandL matches 4 run function collections:reward_messages/mining/sand/5
execute if score @s C_SandL matches 5 run function collections:reward_messages/mining/sand/6
execute if score @s C_SandL matches 6 run function collections:reward_messages/mining/sand/7
scoreboard players add @s C_SandL 1
scoreboard players add @s C_SandNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_SandL = @e[tag=CollectionStand,team=red] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_SandL = @e[tag=CollectionStand,team=dark_red] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_SandL = @e[tag=CollectionStand,team=aqua] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_SandL = @e[tag=CollectionStand,team=dark_aqua] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_SandL = @e[tag=CollectionStand,team=green] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_SandL = @e[tag=CollectionStand,team=dark_green] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_SandL = @e[tag=CollectionStand,team=yellow] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_SandL = @e[tag=CollectionStand,team=blue] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_SandL = @e[tag=CollectionStand,team=dark_blue] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_SandL = @e[tag=CollectionStand,team=gold] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_SandL = @e[tag=CollectionStand,team=gray] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_SandL = @e[tag=CollectionStand,team=dark_gray] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_SandL = @e[tag=CollectionStand,team=light_purple] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_SandL = @e[tag=CollectionStand,team=dark_purple] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_SandL = @e[tag=CollectionStand,team=black] C_SandL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_SandL = @e[tag=CollectionStand,team=white] C_SandL
execute if score @s C_Sand >= @s C_SandN unless score @s C_SandL matches 7.. run function collections:update_collections/mining/sand/levelup
#------------------------------------------#