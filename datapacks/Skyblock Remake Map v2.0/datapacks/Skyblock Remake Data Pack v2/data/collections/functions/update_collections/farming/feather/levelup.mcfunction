#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_FeatherL matches -1 run function collections:reward_messages/farming/feather/0
execute if score @s C_FeatherL matches 0 run function collections:reward_messages/farming/feather/1
execute if score @s C_FeatherL matches 1 run function collections:reward_messages/farming/feather/2
execute if score @s C_FeatherL matches 2 run function collections:reward_messages/farming/feather/3
execute if score @s C_FeatherL matches 3 run function collections:reward_messages/farming/feather/4
execute if score @s C_FeatherL matches 4 run function collections:reward_messages/farming/feather/5
execute if score @s C_FeatherL matches 5 run function collections:reward_messages/farming/feather/6
execute if score @s C_FeatherL matches 6 run function collections:reward_messages/farming/feather/7
execute if score @s C_FeatherL matches 7 run function collections:reward_messages/farming/feather/8
execute if score @s C_FeatherL matches 8 run function collections:reward_messages/farming/feather/9
scoreboard players add @s C_FeatherL 1
scoreboard players add @s C_FeatherNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_FeatherL = @e[tag=CollectionStand,team=red] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_FeatherL = @e[tag=CollectionStand,team=dark_red] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_FeatherL = @e[tag=CollectionStand,team=aqua] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_FeatherL = @e[tag=CollectionStand,team=dark_aqua] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_FeatherL = @e[tag=CollectionStand,team=green] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_FeatherL = @e[tag=CollectionStand,team=dark_green] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_FeatherL = @e[tag=CollectionStand,team=yellow] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_FeatherL = @e[tag=CollectionStand,team=blue] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_FeatherL = @e[tag=CollectionStand,team=dark_blue] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_FeatherL = @e[tag=CollectionStand,team=gold] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_FeatherL = @e[tag=CollectionStand,team=gray] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_FeatherL = @e[tag=CollectionStand,team=dark_gray] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_FeatherL = @e[tag=CollectionStand,team=light_purple] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_FeatherL = @e[tag=CollectionStand,team=dark_purple] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_FeatherL = @e[tag=CollectionStand,team=black] C_FeatherL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_FeatherL = @e[tag=CollectionStand,team=white] C_FeatherL
execute if score @s C_Feather >= @s C_FeatherN unless score @s C_FeatherL matches 9.. run function collections:update_collections/farming/feather/levelup
#------------------------------------------#