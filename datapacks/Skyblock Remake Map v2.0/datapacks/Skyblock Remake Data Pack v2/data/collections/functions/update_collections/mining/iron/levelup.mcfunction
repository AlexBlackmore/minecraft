#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_IronL matches -1 run function collections:reward_messages/mining/iron/0
execute if score @s C_IronL matches 0 run function collections:reward_messages/mining/iron/1
execute if score @s C_IronL matches 1 run function collections:reward_messages/mining/iron/2
execute if score @s C_IronL matches 2 run function collections:reward_messages/mining/iron/3
execute if score @s C_IronL matches 3 run function collections:reward_messages/mining/iron/4
execute if score @s C_IronL matches 4 run function collections:reward_messages/mining/iron/5
execute if score @s C_IronL matches 5 run function collections:reward_messages/mining/iron/6
execute if score @s C_IronL matches 6 run function collections:reward_messages/mining/iron/7
execute if score @s C_IronL matches 7 run function collections:reward_messages/mining/iron/8
execute if score @s C_IronL matches 8 run function collections:reward_messages/mining/iron/9
scoreboard players add @s C_IronL 1
scoreboard players add @s C_IronNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_IronL = @e[tag=CollectionStand,team=red] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_IronL = @e[tag=CollectionStand,team=dark_red] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_IronL = @e[tag=CollectionStand,team=aqua] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_IronL = @e[tag=CollectionStand,team=dark_aqua] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_IronL = @e[tag=CollectionStand,team=green] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_IronL = @e[tag=CollectionStand,team=dark_green] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_IronL = @e[tag=CollectionStand,team=yellow] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_IronL = @e[tag=CollectionStand,team=blue] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_IronL = @e[tag=CollectionStand,team=dark_blue] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_IronL = @e[tag=CollectionStand,team=gold] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_IronL = @e[tag=CollectionStand,team=gray] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_IronL = @e[tag=CollectionStand,team=dark_gray] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_IronL = @e[tag=CollectionStand,team=light_purple] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_IronL = @e[tag=CollectionStand,team=dark_purple] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_IronL = @e[tag=CollectionStand,team=black] C_IronL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_IronL = @e[tag=CollectionStand,team=white] C_IronL
execute if score @s C_Iron >= @s C_IronN unless score @s C_IronL matches 9.. run function collections:update_collections/mining/iron/levelup
#------------------------------------------#