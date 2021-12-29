#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MelonL matches -1 run function collections:reward_messages/farming/melon/0
execute if score @s C_MelonL matches 0 run function collections:reward_messages/farming/melon/1
execute if score @s C_MelonL matches 1 run function collections:reward_messages/farming/melon/2
execute if score @s C_MelonL matches 2 run function collections:reward_messages/farming/melon/3
execute if score @s C_MelonL matches 3 run function collections:reward_messages/farming/melon/4
execute if score @s C_MelonL matches 4 run function collections:reward_messages/farming/melon/5
execute if score @s C_MelonL matches 5 run function collections:reward_messages/farming/melon/6
execute if score @s C_MelonL matches 6 run function collections:reward_messages/farming/melon/7
execute if score @s C_MelonL matches 7 run function collections:reward_messages/farming/melon/8
execute if score @s C_MelonL matches 8 run function collections:reward_messages/farming/melon/9
scoreboard players add @s C_MelonL 1
scoreboard players add @s C_MelonNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_MelonL = @e[tag=CollectionStand,team=red] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_MelonL = @e[tag=CollectionStand,team=dark_red] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_MelonL = @e[tag=CollectionStand,team=aqua] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_MelonL = @e[tag=CollectionStand,team=dark_aqua] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_MelonL = @e[tag=CollectionStand,team=green] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_MelonL = @e[tag=CollectionStand,team=dark_green] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_MelonL = @e[tag=CollectionStand,team=yellow] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_MelonL = @e[tag=CollectionStand,team=blue] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_MelonL = @e[tag=CollectionStand,team=dark_blue] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_MelonL = @e[tag=CollectionStand,team=gold] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_MelonL = @e[tag=CollectionStand,team=gray] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_MelonL = @e[tag=CollectionStand,team=dark_gray] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_MelonL = @e[tag=CollectionStand,team=light_purple] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_MelonL = @e[tag=CollectionStand,team=dark_purple] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_MelonL = @e[tag=CollectionStand,team=black] C_MelonL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_MelonL = @e[tag=CollectionStand,team=white] C_MelonL
execute if score @s C_Melon >= @s C_MelonN unless score @s C_MelonL matches 9.. run function collections:update_collections/farming/melon/levelup
#------------------------------------------#