#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GunpowderL matches -1 run function collections:reward_messages/combat/gunpowder/0
execute if score @s C_GunpowderL matches 0 run function collections:reward_messages/combat/gunpowder/1
execute if score @s C_GunpowderL matches 1 run function collections:reward_messages/combat/gunpowder/2
execute if score @s C_GunpowderL matches 2 run function collections:reward_messages/combat/gunpowder/3
execute if score @s C_GunpowderL matches 3 run function collections:reward_messages/combat/gunpowder/4
execute if score @s C_GunpowderL matches 4 run function collections:reward_messages/combat/gunpowder/5
execute if score @s C_GunpowderL matches 5 run function collections:reward_messages/combat/gunpowder/6
execute if score @s C_GunpowderL matches 6 run function collections:reward_messages/combat/gunpowder/7
execute if score @s C_GunpowderL matches 7 run function collections:reward_messages/combat/gunpowder/8
execute if score @s C_GunpowderL matches 8 run function collections:reward_messages/combat/gunpowder/9
scoreboard players add @s C_GunpowderL 1
scoreboard players add @s C_GunpowderNL 1
scoreboard players operation @e[tag=CraftingEvaluator,team=red] C_GunpowderL = @e[tag=CollectionStand,team=red] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_red] C_GunpowderL = @e[tag=CollectionStand,team=dark_red] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=aqua] C_GunpowderL = @e[tag=CollectionStand,team=aqua] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_aqua] C_GunpowderL = @e[tag=CollectionStand,team=dark_aqua] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=green] C_GunpowderL = @e[tag=CollectionStand,team=green] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_green] C_GunpowderL = @e[tag=CollectionStand,team=dark_green] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=yellow] C_GunpowderL = @e[tag=CollectionStand,team=yellow] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=blue] C_GunpowderL = @e[tag=CollectionStand,team=blue] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_blue] C_GunpowderL = @e[tag=CollectionStand,team=dark_blue] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=gold] C_GunpowderL = @e[tag=CollectionStand,team=gold] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=gray] C_GunpowderL = @e[tag=CollectionStand,team=gray] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_gray] C_GunpowderL = @e[tag=CollectionStand,team=dark_gray] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=light_purple] C_GunpowderL = @e[tag=CollectionStand,team=light_purple] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=dark_purple] C_GunpowderL = @e[tag=CollectionStand,team=dark_purple] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=black] C_GunpowderL = @e[tag=CollectionStand,team=black] C_GunpowderL
scoreboard players operation @e[tag=CraftingEvaluator,team=white] C_GunpowderL = @e[tag=CollectionStand,team=white] C_GunpowderL
execute if score @s C_Gunpowder >= @s C_GunpowderN unless score @s C_GunpowderL matches 9.. run function collections:update_collections/combat/gunpowder/levelup
#------------------------------------------#