#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_TropicalfishL matches -1 run function collections:reward_messages/fishing/tropical_fish/0
execute if score @s C_TropicalfishL matches 0 run function collections:reward_messages/fishing/tropical_fish/1
execute if score @s C_TropicalfishL matches 1 run function collections:reward_messages/fishing/tropical_fish/2
execute if score @s C_TropicalfishL matches 2 run function collections:reward_messages/fishing/tropical_fish/3
scoreboard players add @s C_TropicalfishL 1
scoreboard players add @s C_TropicalfishNL 1
execute if score @s C_Tropicalfish >= @s C_TropicalfishN unless score @s C_TropicalfishL matches 3.. run function collections:update_collections/fishing/tropical_fish/levelup
#------------------------------------------#