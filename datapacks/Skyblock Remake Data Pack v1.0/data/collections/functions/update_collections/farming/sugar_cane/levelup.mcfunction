#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SugarcaneL matches -1 run function collections:reward_messages/farming/sugar_cane/0
execute if score @s C_SugarcaneL matches 0 run function collections:reward_messages/farming/sugar_cane/1
execute if score @s C_SugarcaneL matches 1 run function collections:reward_messages/farming/sugar_cane/2
execute if score @s C_SugarcaneL matches 2 run function collections:reward_messages/farming/sugar_cane/3
execute if score @s C_SugarcaneL matches 3 run function collections:reward_messages/farming/sugar_cane/4
execute if score @s C_SugarcaneL matches 4 run function collections:reward_messages/farming/sugar_cane/5
execute if score @s C_SugarcaneL matches 5 run function collections:reward_messages/farming/sugar_cane/6
execute if score @s C_SugarcaneL matches 6 run function collections:reward_messages/farming/sugar_cane/7
execute if score @s C_SugarcaneL matches 7 run function collections:reward_messages/farming/sugar_cane/8
execute if score @s C_SugarcaneL matches 8 run function collections:reward_messages/farming/sugar_cane/9
scoreboard players add @s C_SugarcaneL 1
scoreboard players add @s C_SugarcaneNL 1
execute if score @s C_Sugarcane >= @s C_SugarcaneN unless score @s C_SugarcaneL matches 9.. run function collections:update_collections/farming/sugar_cane/levelup
#------------------------------------------#