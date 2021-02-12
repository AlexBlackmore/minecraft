#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MushroomL matches -1 run function collections:reward_messages/farming/mushroom/0
execute if score @s C_MushroomL matches 0 run function collections:reward_messages/farming/mushroom/1
execute if score @s C_MushroomL matches 1 run function collections:reward_messages/farming/mushroom/2
execute if score @s C_MushroomL matches 2 run function collections:reward_messages/farming/mushroom/3
execute if score @s C_MushroomL matches 3 run function collections:reward_messages/farming/mushroom/4
execute if score @s C_MushroomL matches 4 run function collections:reward_messages/farming/mushroom/5
execute if score @s C_MushroomL matches 5 run function collections:reward_messages/farming/mushroom/6
execute if score @s C_MushroomL matches 6 run function collections:reward_messages/farming/mushroom/7
execute if score @s C_MushroomL matches 7 run function collections:reward_messages/farming/mushroom/8
execute if score @s C_MushroomL matches 8 run function collections:reward_messages/farming/mushroom/9
scoreboard players add @s C_MushroomL 1
scoreboard players add @s C_MushroomNL 1
execute if score @s C_Mushroom >= @s C_MushroomN unless score @s C_MushroomL matches 9.. run function collections:update_collections/farming/mushroom/levelup
#------------------------------------------#