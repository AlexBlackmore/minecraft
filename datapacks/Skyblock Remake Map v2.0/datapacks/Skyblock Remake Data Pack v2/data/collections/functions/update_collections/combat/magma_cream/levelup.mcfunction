#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MagmacreamL matches -1 run function collections:reward_messages/combat/magma_cream/0
execute if score @s C_MagmacreamL matches 0 run function collections:reward_messages/combat/magma_cream/1
execute if score @s C_MagmacreamL matches 1 run function collections:reward_messages/combat/magma_cream/2
execute if score @s C_MagmacreamL matches 2 run function collections:reward_messages/combat/magma_cream/3
execute if score @s C_MagmacreamL matches 3 run function collections:reward_messages/combat/magma_cream/4
execute if score @s C_MagmacreamL matches 4 run function collections:reward_messages/combat/magma_cream/5
execute if score @s C_MagmacreamL matches 5 run function collections:reward_messages/combat/magma_cream/6
execute if score @s C_MagmacreamL matches 6 run function collections:reward_messages/combat/magma_cream/7
execute if score @s C_MagmacreamL matches 7 run function collections:reward_messages/combat/magma_cream/8
execute if score @s C_MagmacreamL matches 8 run function collections:reward_messages/combat/magma_cream/9
scoreboard players add @s C_MagmacreamL 1
scoreboard players add @s C_MagmacreamNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_MagmacreamL = @e[tag=CollectionStand,team=red] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_MagmacreamL = @e[tag=CollectionStand,team=dark_red] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_MagmacreamL = @e[tag=CollectionStand,team=aqua] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_MagmacreamL = @e[tag=CollectionStand,team=dark_aqua] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_MagmacreamL = @e[tag=CollectionStand,team=green] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_MagmacreamL = @e[tag=CollectionStand,team=dark_green] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_MagmacreamL = @e[tag=CollectionStand,team=yellow] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_MagmacreamL = @e[tag=CollectionStand,team=blue] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_MagmacreamL = @e[tag=CollectionStand,team=dark_blue] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_MagmacreamL = @e[tag=CollectionStand,team=gold] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_MagmacreamL = @e[tag=CollectionStand,team=gray] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_MagmacreamL = @e[tag=CollectionStand,team=dark_gray] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_MagmacreamL = @e[tag=CollectionStand,team=light_purple] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_MagmacreamL = @e[tag=CollectionStand,team=dark_purple] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_MagmacreamL = @e[tag=CollectionStand,team=black] C_MagmacreamL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_MagmacreamL = @e[tag=CollectionStand,team=white] C_MagmacreamL
execute if score @s C_Magmacream >= @s C_MagmacreamN unless score @s C_MagmacreamL matches 9.. run function collections:update_collections/combat/magma_cream/levelup
#------------------------------------------#