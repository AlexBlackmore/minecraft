#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SpongeL matches -1 run function collections:reward_messages/fishing/sponge/0
execute if score @s C_SpongeL matches 0 run function collections:reward_messages/fishing/sponge/1
execute if score @s C_SpongeL matches 1 run function collections:reward_messages/fishing/sponge/2
execute if score @s C_SpongeL matches 2 run function collections:reward_messages/fishing/sponge/3
execute if score @s C_SpongeL matches 3 run function collections:reward_messages/fishing/sponge/4
execute if score @s C_SpongeL matches 4 run function collections:reward_messages/fishing/sponge/5
execute if score @s C_SpongeL matches 5 run function collections:reward_messages/fishing/sponge/6
execute if score @s C_SpongeL matches 6 run function collections:reward_messages/fishing/sponge/7
execute if score @s C_SpongeL matches 7 run function collections:reward_messages/fishing/sponge/8
execute if score @s C_SpongeL matches 8 run function collections:reward_messages/fishing/sponge/9
scoreboard players add @s C_SpongeL 1
scoreboard players add @s C_SpongeNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_SpongeL = @e[tag=CollectionStand,team=red] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_SpongeL = @e[tag=CollectionStand,team=dark_red] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_SpongeL = @e[tag=CollectionStand,team=aqua] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_SpongeL = @e[tag=CollectionStand,team=dark_aqua] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_SpongeL = @e[tag=CollectionStand,team=green] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_SpongeL = @e[tag=CollectionStand,team=dark_green] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_SpongeL = @e[tag=CollectionStand,team=yellow] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_SpongeL = @e[tag=CollectionStand,team=blue] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_SpongeL = @e[tag=CollectionStand,team=dark_blue] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_SpongeL = @e[tag=CollectionStand,team=gold] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_SpongeL = @e[tag=CollectionStand,team=gray] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_SpongeL = @e[tag=CollectionStand,team=dark_gray] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_SpongeL = @e[tag=CollectionStand,team=light_purple] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_SpongeL = @e[tag=CollectionStand,team=dark_purple] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_SpongeL = @e[tag=CollectionStand,team=black] C_SpongeL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_SpongeL = @e[tag=CollectionStand,team=white] C_SpongeL
execute if score @s C_Sponge >= @s C_SpongeN unless score @s C_SpongeL matches 9.. run function collections:update_collections/fishing/sponge/levelup
#------------------------------------------#