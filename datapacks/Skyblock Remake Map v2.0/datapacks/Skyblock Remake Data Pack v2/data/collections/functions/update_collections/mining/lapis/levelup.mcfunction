#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_LapisL matches -1 run function collections:reward_messages/mining/lapis/0
execute if score @s C_LapisL matches 0 run function collections:reward_messages/mining/lapis/1
execute if score @s C_LapisL matches 1 run function collections:reward_messages/mining/lapis/2
execute if score @s C_LapisL matches 2 run function collections:reward_messages/mining/lapis/3
execute if score @s C_LapisL matches 3 run function collections:reward_messages/mining/lapis/4
execute if score @s C_LapisL matches 4 run function collections:reward_messages/mining/lapis/5
execute if score @s C_LapisL matches 5 run function collections:reward_messages/mining/lapis/6
execute if score @s C_LapisL matches 6 run function collections:reward_messages/mining/lapis/7
execute if score @s C_LapisL matches 7 run function collections:reward_messages/mining/lapis/8
execute if score @s C_LapisL matches 8 run function collections:reward_messages/mining/lapis/9
execute if score @s C_LapisL matches 9 run function collections:reward_messages/mining/lapis/10
scoreboard players add @s C_LapisL 1
scoreboard players add @s C_LapisNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_LapisL = @e[tag=CollectionStand,team=red] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_LapisL = @e[tag=CollectionStand,team=dark_red] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_LapisL = @e[tag=CollectionStand,team=aqua] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_LapisL = @e[tag=CollectionStand,team=dark_aqua] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_LapisL = @e[tag=CollectionStand,team=green] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_LapisL = @e[tag=CollectionStand,team=dark_green] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_LapisL = @e[tag=CollectionStand,team=yellow] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_LapisL = @e[tag=CollectionStand,team=blue] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_LapisL = @e[tag=CollectionStand,team=dark_blue] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_LapisL = @e[tag=CollectionStand,team=gold] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_LapisL = @e[tag=CollectionStand,team=gray] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_LapisL = @e[tag=CollectionStand,team=dark_gray] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_LapisL = @e[tag=CollectionStand,team=light_purple] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_LapisL = @e[tag=CollectionStand,team=dark_purple] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_LapisL = @e[tag=CollectionStand,team=black] C_LapisL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_LapisL = @e[tag=CollectionStand,team=white] C_LapisL
execute if score @s C_Lapis >= @s C_LapisN unless score @s C_LapisL matches 10.. run function collections:update_collections/mining/lapis/levelup
#------------------------------------------#