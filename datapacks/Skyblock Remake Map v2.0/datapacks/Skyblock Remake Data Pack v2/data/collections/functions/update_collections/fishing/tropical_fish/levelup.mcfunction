#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_TropicalfishL matches -1 run function collections:reward_messages/fishing/tropical_fish/0
execute if score @s C_TropicalfishL matches 0 run function collections:reward_messages/fishing/tropical_fish/1
execute if score @s C_TropicalfishL matches 1 run function collections:reward_messages/fishing/tropical_fish/2
execute if score @s C_TropicalfishL matches 2 run function collections:reward_messages/fishing/tropical_fish/3
execute if score @s C_TropicalfishL matches 3 run function collections:reward_messages/fishing/tropical_fish/4
execute if score @s C_TropicalfishL matches 4 run function collections:reward_messages/fishing/tropical_fish/5
execute if score @s C_TropicalfishL matches 5 run function collections:reward_messages/fishing/tropical_fish/6
execute if score @s C_TropicalfishL matches 6 run function collections:reward_messages/fishing/tropical_fish/7
scoreboard players add @s C_TropicalfishL 1
scoreboard players add @s C_TropicalfishNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_TropicalfishL = @e[tag=CollectionStand,team=red] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_TropicalfishL = @e[tag=CollectionStand,team=dark_red] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_TropicalfishL = @e[tag=CollectionStand,team=aqua] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_TropicalfishL = @e[tag=CollectionStand,team=dark_aqua] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_TropicalfishL = @e[tag=CollectionStand,team=green] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_TropicalfishL = @e[tag=CollectionStand,team=dark_green] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_TropicalfishL = @e[tag=CollectionStand,team=yellow] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_TropicalfishL = @e[tag=CollectionStand,team=blue] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_TropicalfishL = @e[tag=CollectionStand,team=dark_blue] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_TropicalfishL = @e[tag=CollectionStand,team=gold] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_TropicalfishL = @e[tag=CollectionStand,team=gray] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_TropicalfishL = @e[tag=CollectionStand,team=dark_gray] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_TropicalfishL = @e[tag=CollectionStand,team=light_purple] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_TropicalfishL = @e[tag=CollectionStand,team=dark_purple] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_TropicalfishL = @e[tag=CollectionStand,team=black] C_TropicalfishL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_TropicalfishL = @e[tag=CollectionStand,team=white] C_TropicalfishL
execute if score @s C_Tropicalfish >= @s C_TropicalfishN unless score @s C_TropicalfishL matches 7.. run function collections:update_collections/fishing/tropical_fish/levelup
#------------------------------------------#