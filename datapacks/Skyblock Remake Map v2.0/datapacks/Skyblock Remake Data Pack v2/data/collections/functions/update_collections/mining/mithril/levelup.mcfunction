#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MithrilL matches -1 run function collections:reward_messages/mining/mithril/0
execute if score @s C_MithrilL matches 0 run function collections:reward_messages/mining/mithril/1
execute if score @s C_MithrilL matches 1 run function collections:reward_messages/mining/mithril/2
execute if score @s C_MithrilL matches 2 run function collections:reward_messages/mining/mithril/3
execute if score @s C_MithrilL matches 3 run function collections:reward_messages/mining/mithril/4
execute if score @s C_MithrilL matches 4 run function collections:reward_messages/mining/mithril/5
execute if score @s C_MithrilL matches 5 run function collections:reward_messages/mining/mithril/6
execute if score @s C_MithrilL matches 6 run function collections:reward_messages/mining/mithril/7
execute if score @s C_MithrilL matches 7 run function collections:reward_messages/mining/mithril/8
execute if score @s C_MithrilL matches 8 run function collections:reward_messages/mining/mithril/9
scoreboard players add @s C_MithrilL 1
scoreboard players add @s C_MithrilNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_MithrilL = @e[tag=CollectionStand,team=red] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_MithrilL = @e[tag=CollectionStand,team=dark_red] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_MithrilL = @e[tag=CollectionStand,team=aqua] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_MithrilL = @e[tag=CollectionStand,team=dark_aqua] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_MithrilL = @e[tag=CollectionStand,team=green] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_MithrilL = @e[tag=CollectionStand,team=dark_green] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_MithrilL = @e[tag=CollectionStand,team=yellow] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_MithrilL = @e[tag=CollectionStand,team=blue] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_MithrilL = @e[tag=CollectionStand,team=dark_blue] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_MithrilL = @e[tag=CollectionStand,team=gold] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_MithrilL = @e[tag=CollectionStand,team=gray] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_MithrilL = @e[tag=CollectionStand,team=dark_gray] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_MithrilL = @e[tag=CollectionStand,team=light_purple] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_MithrilL = @e[tag=CollectionStand,team=dark_purple] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_MithrilL = @e[tag=CollectionStand,team=black] C_MithrilL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_MithrilL = @e[tag=CollectionStand,team=white] C_MithrilL
execute if score @s C_Mithril >= @s C_MithrilN unless score @s C_MithrilL matches 9.. run function collections:update_collections/mining/mithril/levelup
#------------------------------------------#