#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SeedsL matches -1 run function collections:reward_messages/farming/seeds/0
execute if score @s C_SeedsL matches 0 run function collections:reward_messages/farming/seeds/1
execute if score @s C_SeedsL matches 1 run function collections:reward_messages/farming/seeds/2
execute if score @s C_SeedsL matches 2 run function collections:reward_messages/farming/seeds/3
execute if score @s C_SeedsL matches 3 run function collections:reward_messages/farming/seeds/4
execute if score @s C_SeedsL matches 4 run function collections:reward_messages/farming/seeds/5
execute if score @s C_SeedsL matches 5 run function collections:reward_messages/farming/seeds/6
scoreboard players add @s C_SeedsL 1
scoreboard players add @s C_SeedsNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_SeedsL = @e[tag=CollectionStand,team=red] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_SeedsL = @e[tag=CollectionStand,team=dark_red] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_SeedsL = @e[tag=CollectionStand,team=aqua] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_SeedsL = @e[tag=CollectionStand,team=dark_aqua] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_SeedsL = @e[tag=CollectionStand,team=green] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_SeedsL = @e[tag=CollectionStand,team=dark_green] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_SeedsL = @e[tag=CollectionStand,team=yellow] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_SeedsL = @e[tag=CollectionStand,team=blue] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_SeedsL = @e[tag=CollectionStand,team=dark_blue] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_SeedsL = @e[tag=CollectionStand,team=gold] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_SeedsL = @e[tag=CollectionStand,team=gray] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_SeedsL = @e[tag=CollectionStand,team=dark_gray] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_SeedsL = @e[tag=CollectionStand,team=light_purple] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_SeedsL = @e[tag=CollectionStand,team=dark_purple] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_SeedsL = @e[tag=CollectionStand,team=black] C_SeedsL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_SeedsL = @e[tag=CollectionStand,team=white] C_SeedsL
execute if score @s C_Seeds >= @s C_SeedsN unless score @s C_SeedsL matches 6.. run function collections:update_collections/farming/seeds/levelup
#------------------------------------------#