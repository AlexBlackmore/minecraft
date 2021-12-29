#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_StringL matches -1 run function collections:reward_messages/combat/string/0
execute if score @s C_StringL matches 0 run function collections:reward_messages/combat/string/1
execute if score @s C_StringL matches 1 run function collections:reward_messages/combat/string/2
execute if score @s C_StringL matches 2 run function collections:reward_messages/combat/string/3
execute if score @s C_StringL matches 3 run function collections:reward_messages/combat/string/4
execute if score @s C_StringL matches 4 run function collections:reward_messages/combat/string/5
execute if score @s C_StringL matches 5 run function collections:reward_messages/combat/string/6
execute if score @s C_StringL matches 6 run function collections:reward_messages/combat/string/7
execute if score @s C_StringL matches 7 run function collections:reward_messages/combat/string/8
execute if score @s C_StringL matches 8 run function collections:reward_messages/combat/string/9
scoreboard players add @s C_StringL 1
scoreboard players add @s C_StringNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_StringL = @e[tag=CollectionStand,team=red] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_StringL = @e[tag=CollectionStand,team=dark_red] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_StringL = @e[tag=CollectionStand,team=aqua] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_StringL = @e[tag=CollectionStand,team=dark_aqua] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_StringL = @e[tag=CollectionStand,team=green] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_StringL = @e[tag=CollectionStand,team=dark_green] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_StringL = @e[tag=CollectionStand,team=yellow] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_StringL = @e[tag=CollectionStand,team=blue] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_StringL = @e[tag=CollectionStand,team=dark_blue] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_StringL = @e[tag=CollectionStand,team=gold] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_StringL = @e[tag=CollectionStand,team=gray] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_StringL = @e[tag=CollectionStand,team=dark_gray] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_StringL = @e[tag=CollectionStand,team=light_purple] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_StringL = @e[tag=CollectionStand,team=dark_purple] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_StringL = @e[tag=CollectionStand,team=black] C_StringL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_StringL = @e[tag=CollectionStand,team=white] C_StringL
execute if score @s C_String >= @s C_StringN unless score @s C_StringL matches 9.. run function collections:update_collections/combat/string/levelup
#------------------------------------------#