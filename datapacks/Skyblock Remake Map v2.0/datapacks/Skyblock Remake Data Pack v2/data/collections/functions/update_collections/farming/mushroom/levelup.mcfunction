#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MushroomL matches -1 run function collections:reward_messages/farming/mushroom/0
execute if score @s C_MushroomL matches 0 run function collections:reward_messages/farming/mushroom/1
execute if score @s C_MushroomL matches 1 run function collections:reward_messages/farming/mushroom/2
execute if score @s C_MushroomL matches 2 run function collections:reward_messages/farming/mushroom/3
execute if score @s C_MushroomL matches 3 run function collections:reward_messages/farming/mushroom/4
execute if score @s C_MushroomL matches 4 run function collections:reward_messages/farming/mushroom/5
execute if score @s C_MushroomL matches 5 run function collections:reward_messages/farming/mushroom/6
execute if score @s C_MushroomL matches 6 run function collections:reward_messages/farming/mushroom/7
execute if score @s C_MushroomL matches 7 run function collections:reward_messages/farming/mushroom/8
execute if score @s C_MushroomL matches 8 run function collections:reward_messages/farming/mushroom/9
scoreboard players add @s C_MushroomL 1
scoreboard players add @s C_MushroomNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_MushroomL = @e[tag=CollectionStand,team=red] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_MushroomL = @e[tag=CollectionStand,team=dark_red] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_MushroomL = @e[tag=CollectionStand,team=aqua] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_MushroomL = @e[tag=CollectionStand,team=dark_aqua] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_MushroomL = @e[tag=CollectionStand,team=green] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_MushroomL = @e[tag=CollectionStand,team=dark_green] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_MushroomL = @e[tag=CollectionStand,team=yellow] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_MushroomL = @e[tag=CollectionStand,team=blue] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_MushroomL = @e[tag=CollectionStand,team=dark_blue] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_MushroomL = @e[tag=CollectionStand,team=gold] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_MushroomL = @e[tag=CollectionStand,team=gray] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_MushroomL = @e[tag=CollectionStand,team=dark_gray] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_MushroomL = @e[tag=CollectionStand,team=light_purple] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_MushroomL = @e[tag=CollectionStand,team=dark_purple] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_MushroomL = @e[tag=CollectionStand,team=black] C_MushroomL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_MushroomL = @e[tag=CollectionStand,team=white] C_MushroomL
execute if score @s C_Mushroom >= @s C_MushroomN unless score @s C_MushroomL matches 9.. run function collections:update_collections/farming/mushroom/levelup
#------------------------------------------#