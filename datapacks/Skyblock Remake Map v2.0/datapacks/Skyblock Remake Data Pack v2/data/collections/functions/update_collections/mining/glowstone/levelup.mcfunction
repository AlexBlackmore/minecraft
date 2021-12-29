#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GlowstoneL matches -1 run function collections:reward_messages/mining/glowstone/0
execute if score @s C_GlowstoneL matches 0 run function collections:reward_messages/mining/glowstone/1
execute if score @s C_GlowstoneL matches 1 run function collections:reward_messages/mining/glowstone/2
execute if score @s C_GlowstoneL matches 2 run function collections:reward_messages/mining/glowstone/3
execute if score @s C_GlowstoneL matches 3 run function collections:reward_messages/mining/glowstone/4
execute if score @s C_GlowstoneL matches 4 run function collections:reward_messages/mining/glowstone/5
execute if score @s C_GlowstoneL matches 5 run function collections:reward_messages/mining/glowstone/6
execute if score @s C_GlowstoneL matches 6 run function collections:reward_messages/mining/glowstone/7
execute if score @s C_GlowstoneL matches 7 run function collections:reward_messages/mining/glowstone/8
execute if score @s C_GlowstoneL matches 8 run function collections:reward_messages/mining/glowstone/9
scoreboard players add @s C_GlowstoneL 1
scoreboard players add @s C_GlowstoneNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_GlowstoneL = @e[tag=CollectionStand,team=red] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_GlowstoneL = @e[tag=CollectionStand,team=dark_red] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_GlowstoneL = @e[tag=CollectionStand,team=aqua] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_GlowstoneL = @e[tag=CollectionStand,team=dark_aqua] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_GlowstoneL = @e[tag=CollectionStand,team=green] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_GlowstoneL = @e[tag=CollectionStand,team=dark_green] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_GlowstoneL = @e[tag=CollectionStand,team=yellow] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_GlowstoneL = @e[tag=CollectionStand,team=blue] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_GlowstoneL = @e[tag=CollectionStand,team=dark_blue] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_GlowstoneL = @e[tag=CollectionStand,team=gold] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_GlowstoneL = @e[tag=CollectionStand,team=gray] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_GlowstoneL = @e[tag=CollectionStand,team=dark_gray] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_GlowstoneL = @e[tag=CollectionStand,team=light_purple] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_GlowstoneL = @e[tag=CollectionStand,team=dark_purple] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_GlowstoneL = @e[tag=CollectionStand,team=black] C_GlowstoneL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_GlowstoneL = @e[tag=CollectionStand,team=white] C_GlowstoneL
execute if score @s C_Glowstone >= @s C_GlowstoneN unless score @s C_GlowstoneL matches 9.. run function collections:update_collections/mining/glowstone/levelup
#------------------------------------------#