#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CocoaL matches -1 run function collections:reward_messages/farming/cocoa/0
execute if score @s C_CocoaL matches 0 run function collections:reward_messages/farming/cocoa/1
execute if score @s C_CocoaL matches 1 run function collections:reward_messages/farming/cocoa/2
execute if score @s C_CocoaL matches 2 run function collections:reward_messages/farming/cocoa/3
execute if score @s C_CocoaL matches 3 run function collections:reward_messages/farming/cocoa/4
execute if score @s C_CocoaL matches 4 run function collections:reward_messages/farming/cocoa/5
execute if score @s C_CocoaL matches 5 run function collections:reward_messages/farming/cocoa/6
execute if score @s C_CocoaL matches 6 run function collections:reward_messages/farming/cocoa/7
execute if score @s C_CocoaL matches 7 run function collections:reward_messages/farming/cocoa/8
execute if score @s C_CocoaL matches 8 run function collections:reward_messages/farming/cocoa/9
scoreboard players add @s C_CocoaL 1
scoreboard players add @s C_CocoaNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_CocoaL = @e[tag=CollectionStand,team=red] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_CocoaL = @e[tag=CollectionStand,team=dark_red] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_CocoaL = @e[tag=CollectionStand,team=aqua] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_CocoaL = @e[tag=CollectionStand,team=dark_aqua] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_CocoaL = @e[tag=CollectionStand,team=green] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_CocoaL = @e[tag=CollectionStand,team=dark_green] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_CocoaL = @e[tag=CollectionStand,team=yellow] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_CocoaL = @e[tag=CollectionStand,team=blue] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_CocoaL = @e[tag=CollectionStand,team=dark_blue] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_CocoaL = @e[tag=CollectionStand,team=gold] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_CocoaL = @e[tag=CollectionStand,team=gray] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_CocoaL = @e[tag=CollectionStand,team=dark_gray] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_CocoaL = @e[tag=CollectionStand,team=light_purple] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_CocoaL = @e[tag=CollectionStand,team=dark_purple] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_CocoaL = @e[tag=CollectionStand,team=black] C_CocoaL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_CocoaL = @e[tag=CollectionStand,team=white] C_CocoaL
execute if score @s C_Cocoa >= @s C_CocoaN unless score @s C_CocoaL matches 9.. run function collections:update_collections/farming/cocoa/levelup
#------------------------------------------#