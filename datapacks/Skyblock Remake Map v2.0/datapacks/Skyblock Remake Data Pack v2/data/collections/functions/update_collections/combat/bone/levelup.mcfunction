#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_BoneL matches -1 run function collections:reward_messages/combat/bone/0
execute if score @s C_BoneL matches 0 run function collections:reward_messages/combat/bone/1
execute if score @s C_BoneL matches 1 run function collections:reward_messages/combat/bone/2
execute if score @s C_BoneL matches 2 run function collections:reward_messages/combat/bone/3
execute if score @s C_BoneL matches 3 run function collections:reward_messages/combat/bone/4
execute if score @s C_BoneL matches 4 run function collections:reward_messages/combat/bone/5
execute if score @s C_BoneL matches 5 run function collections:reward_messages/combat/bone/6
execute if score @s C_BoneL matches 6 run function collections:reward_messages/combat/bone/7
execute if score @s C_BoneL matches 7 run function collections:reward_messages/combat/bone/8
execute if score @s C_BoneL matches 8 run function collections:reward_messages/combat/bone/9
execute if score @s C_BoneL matches 9 run function collections:reward_messages/combat/bone/10
scoreboard players add @s C_BoneL 1
scoreboard players add @s C_BoneNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_BoneL = @e[tag=CollectionStand,team=red] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_BoneL = @e[tag=CollectionStand,team=dark_red] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_BoneL = @e[tag=CollectionStand,team=aqua] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_BoneL = @e[tag=CollectionStand,team=dark_aqua] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_BoneL = @e[tag=CollectionStand,team=green] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_BoneL = @e[tag=CollectionStand,team=dark_green] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_BoneL = @e[tag=CollectionStand,team=yellow] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_BoneL = @e[tag=CollectionStand,team=blue] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_BoneL = @e[tag=CollectionStand,team=dark_blue] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_BoneL = @e[tag=CollectionStand,team=gold] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_BoneL = @e[tag=CollectionStand,team=gray] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_BoneL = @e[tag=CollectionStand,team=dark_gray] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_BoneL = @e[tag=CollectionStand,team=light_purple] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_BoneL = @e[tag=CollectionStand,team=dark_purple] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_BoneL = @e[tag=CollectionStand,team=black] C_BoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_BoneL = @e[tag=CollectionStand,team=white] C_BoneL
execute if score @s C_Bone >= @s C_BoneN unless score @s C_BoneL matches 10.. run function collections:update_collections/combat/bone/levelup
#------------------------------------------#