#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_NetherrackL matches -1 run function collections:reward_messages/mining/netherrack/0
execute if score @s C_NetherrackL matches 0 run function collections:reward_messages/mining/netherrack/1
execute if score @s C_NetherrackL matches 1 run function collections:reward_messages/mining/netherrack/2
execute if score @s C_NetherrackL matches 2 run function collections:reward_messages/mining/netherrack/3
scoreboard players add @s C_NetherrackL 1
scoreboard players add @s C_NetherrackNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_NetherrackL = @e[tag=CollectionStand,team=red] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_NetherrackL = @e[tag=CollectionStand,team=dark_red] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_NetherrackL = @e[tag=CollectionStand,team=aqua] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_NetherrackL = @e[tag=CollectionStand,team=dark_aqua] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_NetherrackL = @e[tag=CollectionStand,team=green] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_NetherrackL = @e[tag=CollectionStand,team=dark_green] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_NetherrackL = @e[tag=CollectionStand,team=yellow] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_NetherrackL = @e[tag=CollectionStand,team=blue] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_NetherrackL = @e[tag=CollectionStand,team=dark_blue] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_NetherrackL = @e[tag=CollectionStand,team=gold] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_NetherrackL = @e[tag=CollectionStand,team=gray] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_NetherrackL = @e[tag=CollectionStand,team=dark_gray] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_NetherrackL = @e[tag=CollectionStand,team=light_purple] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_NetherrackL = @e[tag=CollectionStand,team=dark_purple] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_NetherrackL = @e[tag=CollectionStand,team=black] C_NetherrackL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_NetherrackL = @e[tag=CollectionStand,team=white] C_NetherrackL
execute if score @s C_Netherrack >= @s C_NetherrackN unless score @s C_NetherrackL matches 3.. run function collections:update_collections/mining/netherrack/levelup
#------------------------------------------#