#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MuttonL matches -1 run function collections:reward_messages/farming/mutton/0
execute if score @s C_MuttonL matches 0 run function collections:reward_messages/farming/mutton/1
execute if score @s C_MuttonL matches 1 run function collections:reward_messages/farming/mutton/2
execute if score @s C_MuttonL matches 2 run function collections:reward_messages/farming/mutton/3
execute if score @s C_MuttonL matches 3 run function collections:reward_messages/farming/mutton/4
execute if score @s C_MuttonL matches 4 run function collections:reward_messages/farming/mutton/5
execute if score @s C_MuttonL matches 5 run function collections:reward_messages/farming/mutton/6
execute if score @s C_MuttonL matches 6 run function collections:reward_messages/farming/mutton/7
execute if score @s C_MuttonL matches 7 run function collections:reward_messages/farming/mutton/8
execute if score @s C_MuttonL matches 8 run function collections:reward_messages/farming/mutton/9
scoreboard players add @s C_MuttonL 1
scoreboard players add @s C_MuttonNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_MuttonL = @e[tag=CollectionStand,team=red] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_MuttonL = @e[tag=CollectionStand,team=dark_red] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_MuttonL = @e[tag=CollectionStand,team=aqua] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_MuttonL = @e[tag=CollectionStand,team=dark_aqua] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_MuttonL = @e[tag=CollectionStand,team=green] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_MuttonL = @e[tag=CollectionStand,team=dark_green] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_MuttonL = @e[tag=CollectionStand,team=yellow] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_MuttonL = @e[tag=CollectionStand,team=blue] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_MuttonL = @e[tag=CollectionStand,team=dark_blue] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_MuttonL = @e[tag=CollectionStand,team=gold] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_MuttonL = @e[tag=CollectionStand,team=gray] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_MuttonL = @e[tag=CollectionStand,team=dark_gray] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_MuttonL = @e[tag=CollectionStand,team=light_purple] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_MuttonL = @e[tag=CollectionStand,team=dark_purple] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_MuttonL = @e[tag=CollectionStand,team=black] C_MuttonL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_MuttonL = @e[tag=CollectionStand,team=white] C_MuttonL
execute if score @s C_Mutton >= @s C_MuttonN unless score @s C_MuttonL matches 9.. run function collections:update_collections/farming/mutton/levelup
#------------------------------------------#