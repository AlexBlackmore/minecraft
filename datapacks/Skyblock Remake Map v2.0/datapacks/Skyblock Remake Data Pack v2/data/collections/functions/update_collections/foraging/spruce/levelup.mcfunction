#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SpruceL matches -1 run function collections:reward_messages/foraging/spruce/0
execute if score @s C_SpruceL matches 0 run function collections:reward_messages/foraging/spruce/1
execute if score @s C_SpruceL matches 1 run function collections:reward_messages/foraging/spruce/2
execute if score @s C_SpruceL matches 2 run function collections:reward_messages/foraging/spruce/3
execute if score @s C_SpruceL matches 3 run function collections:reward_messages/foraging/spruce/4
execute if score @s C_SpruceL matches 4 run function collections:reward_messages/foraging/spruce/5
execute if score @s C_SpruceL matches 5 run function collections:reward_messages/foraging/spruce/6
execute if score @s C_SpruceL matches 6 run function collections:reward_messages/foraging/spruce/7
execute if score @s C_SpruceL matches 7 run function collections:reward_messages/foraging/spruce/8
execute if score @s C_SpruceL matches 8 run function collections:reward_messages/foraging/spruce/9
scoreboard players add @s C_SpruceL 1
scoreboard players add @s C_SpruceNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_SpruceL = @e[tag=CollectionStand,team=red] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_SpruceL = @e[tag=CollectionStand,team=dark_red] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_SpruceL = @e[tag=CollectionStand,team=aqua] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_SpruceL = @e[tag=CollectionStand,team=dark_aqua] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_SpruceL = @e[tag=CollectionStand,team=green] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_SpruceL = @e[tag=CollectionStand,team=dark_green] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_SpruceL = @e[tag=CollectionStand,team=yellow] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_SpruceL = @e[tag=CollectionStand,team=blue] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_SpruceL = @e[tag=CollectionStand,team=dark_blue] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_SpruceL = @e[tag=CollectionStand,team=gold] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_SpruceL = @e[tag=CollectionStand,team=gray] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_SpruceL = @e[tag=CollectionStand,team=dark_gray] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_SpruceL = @e[tag=CollectionStand,team=light_purple] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_SpruceL = @e[tag=CollectionStand,team=dark_purple] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_SpruceL = @e[tag=CollectionStand,team=black] C_SpruceL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_SpruceL = @e[tag=CollectionStand,team=white] C_SpruceL
execute if score @s C_Spruce >= @s C_SpruceN unless score @s C_SpruceL matches 9.. run function collections:update_collections/foraging/spruce/levelup
#------------------------------------------#