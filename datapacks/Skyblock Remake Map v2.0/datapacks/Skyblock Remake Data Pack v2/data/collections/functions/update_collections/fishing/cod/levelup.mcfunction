#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CodL matches -1 run function collections:reward_messages/fishing/cod/0
execute if score @s C_CodL matches 0 run function collections:reward_messages/fishing/cod/1
execute if score @s C_CodL matches 1 run function collections:reward_messages/fishing/cod/2
execute if score @s C_CodL matches 2 run function collections:reward_messages/fishing/cod/3
execute if score @s C_CodL matches 3 run function collections:reward_messages/fishing/cod/4
execute if score @s C_CodL matches 4 run function collections:reward_messages/fishing/cod/5
execute if score @s C_CodL matches 5 run function collections:reward_messages/fishing/cod/6
execute if score @s C_CodL matches 6 run function collections:reward_messages/fishing/cod/7
execute if score @s C_CodL matches 7 run function collections:reward_messages/fishing/cod/8
execute if score @s C_CodL matches 8 run function collections:reward_messages/fishing/cod/9
execute if score @s C_CodL matches 9 run function collections:reward_messages/fishing/cod/10
execute if score @s C_CodL matches 10 run function collections:reward_messages/fishing/cod/11
scoreboard players add @s C_CodL 1
scoreboard players add @s C_CodNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CodL = @e[tag=CollectionStand,team=red] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CodL = @e[tag=CollectionStand,team=dark_red] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CodL = @e[tag=CollectionStand,team=aqua] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CodL = @e[tag=CollectionStand,team=dark_aqua] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CodL = @e[tag=CollectionStand,team=green] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CodL = @e[tag=CollectionStand,team=dark_green] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CodL = @e[tag=CollectionStand,team=yellow] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CodL = @e[tag=CollectionStand,team=blue] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CodL = @e[tag=CollectionStand,team=dark_blue] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CodL = @e[tag=CollectionStand,team=gold] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CodL = @e[tag=CollectionStand,team=gray] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CodL = @e[tag=CollectionStand,team=dark_gray] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CodL = @e[tag=CollectionStand,team=light_purple] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CodL = @e[tag=CollectionStand,team=dark_purple] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CodL = @e[tag=CollectionStand,team=black] C_CodL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CodL = @e[tag=CollectionStand,team=white] C_CodL
execute if score @s C_Cod >= @s C_CodN unless score @s C_CodL matches 11.. run function collections:update_collections/fishing/cod/levelup
#------------------------------------------#