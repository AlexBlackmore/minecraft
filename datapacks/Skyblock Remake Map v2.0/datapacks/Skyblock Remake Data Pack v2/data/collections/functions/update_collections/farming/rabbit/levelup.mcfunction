#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_RabbitL matches -1 run function collections:reward_messages/farming/rabbit/0
execute if score @s C_RabbitL matches 0 run function collections:reward_messages/farming/rabbit/1
execute if score @s C_RabbitL matches 1 run function collections:reward_messages/farming/rabbit/2
execute if score @s C_RabbitL matches 2 run function collections:reward_messages/farming/rabbit/3
execute if score @s C_RabbitL matches 3 run function collections:reward_messages/farming/rabbit/4
execute if score @s C_RabbitL matches 4 run function collections:reward_messages/farming/rabbit/5
execute if score @s C_RabbitL matches 5 run function collections:reward_messages/farming/rabbit/6
execute if score @s C_RabbitL matches 6 run function collections:reward_messages/farming/rabbit/7
execute if score @s C_RabbitL matches 7 run function collections:reward_messages/farming/rabbit/8
execute if score @s C_RabbitL matches 8 run function collections:reward_messages/farming/rabbit/9
scoreboard players add @s C_RabbitL 1
scoreboard players add @s C_RabbitNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_RabbitL = @e[tag=CollectionStand,team=red] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_RabbitL = @e[tag=CollectionStand,team=dark_red] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_RabbitL = @e[tag=CollectionStand,team=aqua] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_RabbitL = @e[tag=CollectionStand,team=dark_aqua] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_RabbitL = @e[tag=CollectionStand,team=green] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_RabbitL = @e[tag=CollectionStand,team=dark_green] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_RabbitL = @e[tag=CollectionStand,team=yellow] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_RabbitL = @e[tag=CollectionStand,team=blue] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_RabbitL = @e[tag=CollectionStand,team=dark_blue] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_RabbitL = @e[tag=CollectionStand,team=gold] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_RabbitL = @e[tag=CollectionStand,team=gray] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_RabbitL = @e[tag=CollectionStand,team=dark_gray] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_RabbitL = @e[tag=CollectionStand,team=light_purple] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_RabbitL = @e[tag=CollectionStand,team=dark_purple] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_RabbitL = @e[tag=CollectionStand,team=black] C_RabbitL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_RabbitL = @e[tag=CollectionStand,team=white] C_RabbitL
execute if score @s C_Rabbit >= @s C_RabbitN unless score @s C_RabbitL matches 9.. run function collections:update_collections/farming/rabbit/levelup
#------------------------------------------#