#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PotatoL matches -1 run function collections:reward_messages/farming/potato/0
execute if score @s C_PotatoL matches 0 run function collections:reward_messages/farming/potato/1
execute if score @s C_PotatoL matches 1 run function collections:reward_messages/farming/potato/2
execute if score @s C_PotatoL matches 2 run function collections:reward_messages/farming/potato/3
execute if score @s C_PotatoL matches 3 run function collections:reward_messages/farming/potato/4
execute if score @s C_PotatoL matches 4 run function collections:reward_messages/farming/potato/5
execute if score @s C_PotatoL matches 5 run function collections:reward_messages/farming/potato/6
execute if score @s C_PotatoL matches 6 run function collections:reward_messages/farming/potato/7
execute if score @s C_PotatoL matches 7 run function collections:reward_messages/farming/potato/8
execute if score @s C_PotatoL matches 8 run function collections:reward_messages/farming/potato/9
scoreboard players add @s C_PotatoL 1
scoreboard players add @s C_PotatoNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_PotatoL = @e[tag=CollectionStand,team=red] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_PotatoL = @e[tag=CollectionStand,team=dark_red] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_PotatoL = @e[tag=CollectionStand,team=aqua] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_PotatoL = @e[tag=CollectionStand,team=dark_aqua] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_PotatoL = @e[tag=CollectionStand,team=green] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_PotatoL = @e[tag=CollectionStand,team=dark_green] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_PotatoL = @e[tag=CollectionStand,team=yellow] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_PotatoL = @e[tag=CollectionStand,team=blue] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_PotatoL = @e[tag=CollectionStand,team=dark_blue] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_PotatoL = @e[tag=CollectionStand,team=gold] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_PotatoL = @e[tag=CollectionStand,team=gray] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_PotatoL = @e[tag=CollectionStand,team=dark_gray] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_PotatoL = @e[tag=CollectionStand,team=light_purple] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_PotatoL = @e[tag=CollectionStand,team=dark_purple] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_PotatoL = @e[tag=CollectionStand,team=black] C_PotatoL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_PotatoL = @e[tag=CollectionStand,team=white] C_PotatoL
execute if score @s C_Potato >= @s C_PotatoN unless score @s C_PotatoL matches 9.. run function collections:update_collections/farming/potato/levelup
#------------------------------------------#