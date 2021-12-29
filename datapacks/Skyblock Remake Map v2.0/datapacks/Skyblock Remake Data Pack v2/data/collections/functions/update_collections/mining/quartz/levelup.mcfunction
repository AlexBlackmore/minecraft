#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_QuartzL matches -1 run function collections:reward_messages/mining/quartz/0
execute if score @s C_QuartzL matches 0 run function collections:reward_messages/mining/quartz/1
execute if score @s C_QuartzL matches 1 run function collections:reward_messages/mining/quartz/2
execute if score @s C_QuartzL matches 2 run function collections:reward_messages/mining/quartz/3
execute if score @s C_QuartzL matches 3 run function collections:reward_messages/mining/quartz/4
execute if score @s C_QuartzL matches 4 run function collections:reward_messages/mining/quartz/5
execute if score @s C_QuartzL matches 5 run function collections:reward_messages/mining/quartz/6
execute if score @s C_QuartzL matches 6 run function collections:reward_messages/mining/quartz/7
execute if score @s C_QuartzL matches 7 run function collections:reward_messages/mining/quartz/8
execute if score @s C_QuartzL matches 8 run function collections:reward_messages/mining/quartz/9
scoreboard players add @s C_QuartzL 1
scoreboard players add @s C_QuartzNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_QuartzL = @e[tag=CollectionStand,team=red] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_QuartzL = @e[tag=CollectionStand,team=dark_red] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_QuartzL = @e[tag=CollectionStand,team=aqua] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_QuartzL = @e[tag=CollectionStand,team=dark_aqua] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_QuartzL = @e[tag=CollectionStand,team=green] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_QuartzL = @e[tag=CollectionStand,team=dark_green] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_QuartzL = @e[tag=CollectionStand,team=yellow] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_QuartzL = @e[tag=CollectionStand,team=blue] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_QuartzL = @e[tag=CollectionStand,team=dark_blue] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_QuartzL = @e[tag=CollectionStand,team=gold] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_QuartzL = @e[tag=CollectionStand,team=gray] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_QuartzL = @e[tag=CollectionStand,team=dark_gray] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_QuartzL = @e[tag=CollectionStand,team=light_purple] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_QuartzL = @e[tag=CollectionStand,team=dark_purple] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_QuartzL = @e[tag=CollectionStand,team=black] C_QuartzL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_QuartzL = @e[tag=CollectionStand,team=white] C_QuartzL
execute if score @s C_Quartz >= @s C_QuartzN unless score @s C_QuartzL matches 9.. run function collections:update_collections/mining/quartz/levelup
#------------------------------------------#