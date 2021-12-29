#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_RottenfleshL matches -1 run function collections:reward_messages/combat/rotten_flesh/0
execute if score @s C_RottenfleshL matches 0 run function collections:reward_messages/combat/rotten_flesh/1
execute if score @s C_RottenfleshL matches 1 run function collections:reward_messages/combat/rotten_flesh/2
execute if score @s C_RottenfleshL matches 2 run function collections:reward_messages/combat/rotten_flesh/3
execute if score @s C_RottenfleshL matches 3 run function collections:reward_messages/combat/rotten_flesh/4
execute if score @s C_RottenfleshL matches 4 run function collections:reward_messages/combat/rotten_flesh/5
execute if score @s C_RottenfleshL matches 5 run function collections:reward_messages/combat/rotten_flesh/6
execute if score @s C_RottenfleshL matches 6 run function collections:reward_messages/combat/rotten_flesh/7
execute if score @s C_RottenfleshL matches 7 run function collections:reward_messages/combat/rotten_flesh/8
execute if score @s C_RottenfleshL matches 8 run function collections:reward_messages/combat/rotten_flesh/9
scoreboard players add @s C_RottenfleshL 1
scoreboard players add @s C_RottenfleshNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_RottenfleshL = @e[tag=CollectionStand,team=red] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_RottenfleshL = @e[tag=CollectionStand,team=dark_red] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_RottenfleshL = @e[tag=CollectionStand,team=aqua] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_RottenfleshL = @e[tag=CollectionStand,team=dark_aqua] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_RottenfleshL = @e[tag=CollectionStand,team=green] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_RottenfleshL = @e[tag=CollectionStand,team=dark_green] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_RottenfleshL = @e[tag=CollectionStand,team=yellow] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_RottenfleshL = @e[tag=CollectionStand,team=blue] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_RottenfleshL = @e[tag=CollectionStand,team=dark_blue] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_RottenfleshL = @e[tag=CollectionStand,team=gold] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_RottenfleshL = @e[tag=CollectionStand,team=gray] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_RottenfleshL = @e[tag=CollectionStand,team=dark_gray] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_RottenfleshL = @e[tag=CollectionStand,team=light_purple] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_RottenfleshL = @e[tag=CollectionStand,team=dark_purple] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_RottenfleshL = @e[tag=CollectionStand,team=black] C_RottenfleshL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_RottenfleshL = @e[tag=CollectionStand,team=white] C_RottenfleshL
execute if score @s C_Rottenflesh >= @s C_RottenfleshN unless score @s C_RottenfleshL matches 9.. run function collections:update_collections/combat/rotten_flesh/levelup
#------------------------------------------#