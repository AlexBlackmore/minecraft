#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_ClayL matches -1 run function collections:reward_messages/fishing/clay/0
execute if score @s C_ClayL matches 0 run function collections:reward_messages/fishing/clay/1
execute if score @s C_ClayL matches 1 run function collections:reward_messages/fishing/clay/2
execute if score @s C_ClayL matches 2 run function collections:reward_messages/fishing/clay/3
execute if score @s C_ClayL matches 3 run function collections:reward_messages/fishing/clay/4
execute if score @s C_ClayL matches 4 run function collections:reward_messages/fishing/clay/5
scoreboard players add @s C_ClayL 1
scoreboard players add @s C_ClayNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_ClayL = @e[tag=CollectionStand,team=red] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_ClayL = @e[tag=CollectionStand,team=dark_red] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_ClayL = @e[tag=CollectionStand,team=aqua] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_ClayL = @e[tag=CollectionStand,team=dark_aqua] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_ClayL = @e[tag=CollectionStand,team=green] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_ClayL = @e[tag=CollectionStand,team=dark_green] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_ClayL = @e[tag=CollectionStand,team=yellow] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_ClayL = @e[tag=CollectionStand,team=blue] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_ClayL = @e[tag=CollectionStand,team=dark_blue] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_ClayL = @e[tag=CollectionStand,team=gold] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_ClayL = @e[tag=CollectionStand,team=gray] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_ClayL = @e[tag=CollectionStand,team=dark_gray] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_ClayL = @e[tag=CollectionStand,team=light_purple] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_ClayL = @e[tag=CollectionStand,team=dark_purple] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_ClayL = @e[tag=CollectionStand,team=black] C_ClayL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_ClayL = @e[tag=CollectionStand,team=white] C_ClayL
execute if score @s C_Clay >= @s C_ClayN unless score @s C_ClayL matches 5.. run function collections:update_collections/fishing/clay/levelup
#------------------------------------------#