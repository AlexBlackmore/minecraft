#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CoalL matches -1 run function collections:reward_messages/mining/coal/0
execute if score @s C_CoalL matches 0 run function collections:reward_messages/mining/coal/1
execute if score @s C_CoalL matches 1 run function collections:reward_messages/mining/coal/2
execute if score @s C_CoalL matches 2 run function collections:reward_messages/mining/coal/3
execute if score @s C_CoalL matches 3 run function collections:reward_messages/mining/coal/4
execute if score @s C_CoalL matches 4 run function collections:reward_messages/mining/coal/5
execute if score @s C_CoalL matches 5 run function collections:reward_messages/mining/coal/6
execute if score @s C_CoalL matches 6 run function collections:reward_messages/mining/coal/7
execute if score @s C_CoalL matches 7 run function collections:reward_messages/mining/coal/8
execute if score @s C_CoalL matches 8 run function collections:reward_messages/mining/coal/9
scoreboard players add @s C_CoalL 1
scoreboard players add @s C_CoalNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CoalL = @e[tag=CollectionStand,team=red] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CoalL = @e[tag=CollectionStand,team=dark_red] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CoalL = @e[tag=CollectionStand,team=aqua] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CoalL = @e[tag=CollectionStand,team=dark_aqua] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CoalL = @e[tag=CollectionStand,team=green] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CoalL = @e[tag=CollectionStand,team=dark_green] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CoalL = @e[tag=CollectionStand,team=yellow] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CoalL = @e[tag=CollectionStand,team=blue] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CoalL = @e[tag=CollectionStand,team=dark_blue] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CoalL = @e[tag=CollectionStand,team=gold] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CoalL = @e[tag=CollectionStand,team=gray] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CoalL = @e[tag=CollectionStand,team=dark_gray] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CoalL = @e[tag=CollectionStand,team=light_purple] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CoalL = @e[tag=CollectionStand,team=dark_purple] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CoalL = @e[tag=CollectionStand,team=black] C_CoalL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CoalL = @e[tag=CollectionStand,team=white] C_CoalL
execute if score @s C_Coal >= @s C_CoalN unless score @s C_CoalL matches 9.. run function collections:update_collections/mining/coal/levelup
#------------------------------------------#