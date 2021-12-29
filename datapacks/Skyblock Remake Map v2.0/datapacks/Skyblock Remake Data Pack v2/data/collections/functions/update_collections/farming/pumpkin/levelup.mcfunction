#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PumpkinL matches -1 run function collections:reward_messages/farming/pumpkin/0
execute if score @s C_PumpkinL matches 0 run function collections:reward_messages/farming/pumpkin/1
execute if score @s C_PumpkinL matches 1 run function collections:reward_messages/farming/pumpkin/2
execute if score @s C_PumpkinL matches 2 run function collections:reward_messages/farming/pumpkin/3
execute if score @s C_PumpkinL matches 3 run function collections:reward_messages/farming/pumpkin/4
execute if score @s C_PumpkinL matches 4 run function collections:reward_messages/farming/pumpkin/5
execute if score @s C_PumpkinL matches 5 run function collections:reward_messages/farming/pumpkin/6
execute if score @s C_PumpkinL matches 6 run function collections:reward_messages/farming/pumpkin/7
execute if score @s C_PumpkinL matches 7 run function collections:reward_messages/farming/pumpkin/8
execute if score @s C_PumpkinL matches 8 run function collections:reward_messages/farming/pumpkin/9
execute if score @s C_PumpkinL matches 9 run function collections:reward_messages/farming/pumpkin/10
execute if score @s C_PumpkinL matches 10 run function collections:reward_messages/farming/pumpkin/11
scoreboard players add @s C_PumpkinL 1
scoreboard players add @s C_PumpkinNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_PumpkinL = @e[tag=CollectionStand,team=red] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_PumpkinL = @e[tag=CollectionStand,team=dark_red] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_PumpkinL = @e[tag=CollectionStand,team=aqua] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_PumpkinL = @e[tag=CollectionStand,team=dark_aqua] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_PumpkinL = @e[tag=CollectionStand,team=green] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_PumpkinL = @e[tag=CollectionStand,team=dark_green] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_PumpkinL = @e[tag=CollectionStand,team=yellow] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_PumpkinL = @e[tag=CollectionStand,team=blue] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_PumpkinL = @e[tag=CollectionStand,team=dark_blue] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_PumpkinL = @e[tag=CollectionStand,team=gold] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_PumpkinL = @e[tag=CollectionStand,team=gray] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_PumpkinL = @e[tag=CollectionStand,team=dark_gray] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_PumpkinL = @e[tag=CollectionStand,team=light_purple] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_PumpkinL = @e[tag=CollectionStand,team=dark_purple] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_PumpkinL = @e[tag=CollectionStand,team=black] C_PumpkinL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_PumpkinL = @e[tag=CollectionStand,team=white] C_PumpkinL
execute if score @s C_Pumpkin >= @s C_PumpkinN unless score @s C_PumpkinL matches 11.. run function collections:update_collections/farming/pumpkin/levelup
#------------------------------------------#