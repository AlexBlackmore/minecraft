#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_AcaciaL matches -1 run function collections:reward_messages/foraging/acacia/0
execute if score @s C_AcaciaL matches 0 run function collections:reward_messages/foraging/acacia/1
execute if score @s C_AcaciaL matches 1 run function collections:reward_messages/foraging/acacia/2
execute if score @s C_AcaciaL matches 2 run function collections:reward_messages/foraging/acacia/3
execute if score @s C_AcaciaL matches 3 run function collections:reward_messages/foraging/acacia/4
execute if score @s C_AcaciaL matches 4 run function collections:reward_messages/foraging/acacia/5
execute if score @s C_AcaciaL matches 5 run function collections:reward_messages/foraging/acacia/6
execute if score @s C_AcaciaL matches 6 run function collections:reward_messages/foraging/acacia/7
execute if score @s C_AcaciaL matches 7 run function collections:reward_messages/foraging/acacia/8
execute if score @s C_AcaciaL matches 8 run function collections:reward_messages/foraging/acacia/9
scoreboard players add @s C_AcaciaL 1
scoreboard players add @s C_AcaciaNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_AcaciaL = @e[tag=CollectionStand,team=red] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_AcaciaL = @e[tag=CollectionStand,team=dark_red] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_AcaciaL = @e[tag=CollectionStand,team=aqua] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_AcaciaL = @e[tag=CollectionStand,team=dark_aqua] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_AcaciaL = @e[tag=CollectionStand,team=green] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_AcaciaL = @e[tag=CollectionStand,team=dark_green] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_AcaciaL = @e[tag=CollectionStand,team=yellow] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_AcaciaL = @e[tag=CollectionStand,team=blue] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_AcaciaL = @e[tag=CollectionStand,team=dark_blue] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_AcaciaL = @e[tag=CollectionStand,team=gold] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_AcaciaL = @e[tag=CollectionStand,team=gray] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_AcaciaL = @e[tag=CollectionStand,team=dark_gray] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_AcaciaL = @e[tag=CollectionStand,team=light_purple] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_AcaciaL = @e[tag=CollectionStand,team=dark_purple] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_AcaciaL = @e[tag=CollectionStand,team=black] C_AcaciaL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_AcaciaL = @e[tag=CollectionStand,team=white] C_AcaciaL
execute if score @s C_Acacia >= @s C_AcaciaN unless score @s C_AcaciaL matches 9.. run function collections:update_collections/foraging/acacia/levelup
#------------------------------------------#