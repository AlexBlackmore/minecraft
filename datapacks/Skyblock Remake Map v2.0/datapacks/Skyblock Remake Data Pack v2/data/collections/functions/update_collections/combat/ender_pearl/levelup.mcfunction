#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EnderpearlL matches -1 run function collections:reward_messages/combat/ender_pearl/0
execute if score @s C_EnderpearlL matches 0 run function collections:reward_messages/combat/ender_pearl/1
execute if score @s C_EnderpearlL matches 1 run function collections:reward_messages/combat/ender_pearl/2
execute if score @s C_EnderpearlL matches 2 run function collections:reward_messages/combat/ender_pearl/3
execute if score @s C_EnderpearlL matches 3 run function collections:reward_messages/combat/ender_pearl/4
execute if score @s C_EnderpearlL matches 4 run function collections:reward_messages/combat/ender_pearl/5
execute if score @s C_EnderpearlL matches 5 run function collections:reward_messages/combat/ender_pearl/6
execute if score @s C_EnderpearlL matches 6 run function collections:reward_messages/combat/ender_pearl/7
execute if score @s C_EnderpearlL matches 7 run function collections:reward_messages/combat/ender_pearl/8
execute if score @s C_EnderpearlL matches 8 run function collections:reward_messages/combat/ender_pearl/9
scoreboard players add @s C_EnderpearlL 1
scoreboard players add @s C_EnderpearlNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_EnderpearlL = @e[tag=CollectionStand,team=red] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_EnderpearlL = @e[tag=CollectionStand,team=dark_red] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_EnderpearlL = @e[tag=CollectionStand,team=aqua] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_EnderpearlL = @e[tag=CollectionStand,team=dark_aqua] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_EnderpearlL = @e[tag=CollectionStand,team=green] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_EnderpearlL = @e[tag=CollectionStand,team=dark_green] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_EnderpearlL = @e[tag=CollectionStand,team=yellow] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_EnderpearlL = @e[tag=CollectionStand,team=blue] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_EnderpearlL = @e[tag=CollectionStand,team=dark_blue] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_EnderpearlL = @e[tag=CollectionStand,team=gold] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_EnderpearlL = @e[tag=CollectionStand,team=gray] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_EnderpearlL = @e[tag=CollectionStand,team=dark_gray] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_EnderpearlL = @e[tag=CollectionStand,team=light_purple] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_EnderpearlL = @e[tag=CollectionStand,team=dark_purple] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_EnderpearlL = @e[tag=CollectionStand,team=black] C_EnderpearlL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_EnderpearlL = @e[tag=CollectionStand,team=white] C_EnderpearlL
execute if score @s C_Enderpearl >= @s C_EnderpearlN unless score @s C_EnderpearlL matches 9.. run function collections:update_collections/combat/ender_pearl/levelup
#------------------------------------------#