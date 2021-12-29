#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SalmonL matches -1 run function collections:reward_messages/fishing/salmon/0
execute if score @s C_SalmonL matches 0 run function collections:reward_messages/fishing/salmon/1
execute if score @s C_SalmonL matches 1 run function collections:reward_messages/fishing/salmon/2
execute if score @s C_SalmonL matches 2 run function collections:reward_messages/fishing/salmon/3
execute if score @s C_SalmonL matches 3 run function collections:reward_messages/fishing/salmon/4
execute if score @s C_SalmonL matches 4 run function collections:reward_messages/fishing/salmon/5
execute if score @s C_SalmonL matches 5 run function collections:reward_messages/fishing/salmon/6
execute if score @s C_SalmonL matches 6 run function collections:reward_messages/fishing/salmon/7
execute if score @s C_SalmonL matches 7 run function collections:reward_messages/fishing/salmon/8
execute if score @s C_SalmonL matches 8 run function collections:reward_messages/fishing/salmon/9
scoreboard players add @s C_SalmonL 1
scoreboard players add @s C_SalmonNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_SalmonL = @e[tag=CollectionStand,team=red] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_SalmonL = @e[tag=CollectionStand,team=dark_red] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_SalmonL = @e[tag=CollectionStand,team=aqua] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_SalmonL = @e[tag=CollectionStand,team=dark_aqua] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_SalmonL = @e[tag=CollectionStand,team=green] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_SalmonL = @e[tag=CollectionStand,team=dark_green] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_SalmonL = @e[tag=CollectionStand,team=yellow] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_SalmonL = @e[tag=CollectionStand,team=blue] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_SalmonL = @e[tag=CollectionStand,team=dark_blue] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_SalmonL = @e[tag=CollectionStand,team=gold] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_SalmonL = @e[tag=CollectionStand,team=gray] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_SalmonL = @e[tag=CollectionStand,team=dark_gray] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_SalmonL = @e[tag=CollectionStand,team=light_purple] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_SalmonL = @e[tag=CollectionStand,team=dark_purple] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_SalmonL = @e[tag=CollectionStand,team=black] C_SalmonL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_SalmonL = @e[tag=CollectionStand,team=white] C_SalmonL
execute if score @s C_Salmon >= @s C_SalmonN unless score @s C_SalmonL matches 9.. run function collections:update_collections/fishing/salmon/levelup
#------------------------------------------#