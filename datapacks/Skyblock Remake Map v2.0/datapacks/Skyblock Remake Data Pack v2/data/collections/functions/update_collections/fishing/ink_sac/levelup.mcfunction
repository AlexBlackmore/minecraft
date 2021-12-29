#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_InksacL matches -1 run function collections:reward_messages/fishing/ink_sac/0
execute if score @s C_InksacL matches 0 run function collections:reward_messages/fishing/ink_sac/1
execute if score @s C_InksacL matches 1 run function collections:reward_messages/fishing/ink_sac/2
execute if score @s C_InksacL matches 2 run function collections:reward_messages/fishing/ink_sac/3
execute if score @s C_InksacL matches 3 run function collections:reward_messages/fishing/ink_sac/4
execute if score @s C_InksacL matches 4 run function collections:reward_messages/fishing/ink_sac/5
execute if score @s C_InksacL matches 5 run function collections:reward_messages/fishing/ink_sac/6
execute if score @s C_InksacL matches 6 run function collections:reward_messages/fishing/ink_sac/7
execute if score @s C_InksacL matches 7 run function collections:reward_messages/fishing/ink_sac/8
execute if score @s C_InksacL matches 8 run function collections:reward_messages/fishing/ink_sac/9
scoreboard players add @s C_InksacL 1
scoreboard players add @s C_InksacNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_InksacL = @e[tag=CollectionStand,team=red] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_InksacL = @e[tag=CollectionStand,team=dark_red] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_InksacL = @e[tag=CollectionStand,team=aqua] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_InksacL = @e[tag=CollectionStand,team=dark_aqua] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_InksacL = @e[tag=CollectionStand,team=green] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_InksacL = @e[tag=CollectionStand,team=dark_green] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_InksacL = @e[tag=CollectionStand,team=yellow] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_InksacL = @e[tag=CollectionStand,team=blue] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_InksacL = @e[tag=CollectionStand,team=dark_blue] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_InksacL = @e[tag=CollectionStand,team=gold] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_InksacL = @e[tag=CollectionStand,team=gray] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_InksacL = @e[tag=CollectionStand,team=dark_gray] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_InksacL = @e[tag=CollectionStand,team=light_purple] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_InksacL = @e[tag=CollectionStand,team=dark_purple] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_InksacL = @e[tag=CollectionStand,team=black] C_InksacL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_InksacL = @e[tag=CollectionStand,team=white] C_InksacL
execute if score @s C_Inksac >= @s C_InksacN unless score @s C_InksacL matches 9.. run function collections:update_collections/fishing/ink_sac/levelup
#------------------------------------------#