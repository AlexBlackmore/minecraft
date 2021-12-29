#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_IceL matches -1 run function collections:reward_messages/mining/ice/0
execute if score @s C_IceL matches 0 run function collections:reward_messages/mining/ice/1
execute if score @s C_IceL matches 1 run function collections:reward_messages/mining/ice/2
execute if score @s C_IceL matches 2 run function collections:reward_messages/mining/ice/3
execute if score @s C_IceL matches 3 run function collections:reward_messages/mining/ice/4
execute if score @s C_IceL matches 4 run function collections:reward_messages/mining/ice/5
execute if score @s C_IceL matches 5 run function collections:reward_messages/mining/ice/6
execute if score @s C_IceL matches 6 run function collections:reward_messages/mining/ice/7
execute if score @s C_IceL matches 7 run function collections:reward_messages/mining/ice/8
execute if score @s C_IceL matches 8 run function collections:reward_messages/mining/ice/9
execute if score @s C_IceL matches 9 run function collections:reward_messages/mining/ice/10
scoreboard players add @s C_IceL 1
scoreboard players add @s C_IceNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_IceL = @e[tag=CollectionStand,team=red] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_IceL = @e[tag=CollectionStand,team=dark_red] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_IceL = @e[tag=CollectionStand,team=aqua] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_IceL = @e[tag=CollectionStand,team=dark_aqua] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_IceL = @e[tag=CollectionStand,team=green] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_IceL = @e[tag=CollectionStand,team=dark_green] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_IceL = @e[tag=CollectionStand,team=yellow] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_IceL = @e[tag=CollectionStand,team=blue] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_IceL = @e[tag=CollectionStand,team=dark_blue] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_IceL = @e[tag=CollectionStand,team=gold] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_IceL = @e[tag=CollectionStand,team=gray] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_IceL = @e[tag=CollectionStand,team=dark_gray] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_IceL = @e[tag=CollectionStand,team=light_purple] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_IceL = @e[tag=CollectionStand,team=dark_purple] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_IceL = @e[tag=CollectionStand,team=black] C_IceL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_IceL = @e[tag=CollectionStand,team=white] C_IceL
execute if score @s C_Ice >= @s C_IceN unless score @s C_IceL matches 10.. run function collections:update_collections/mining/ice/levelup
#------------------------------------------#