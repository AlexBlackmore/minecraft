#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Jungle += @p C_Jungle
scoreboard players operation @s C_Jungle += @p C_JungleWood
execute if score @s C_Jungle >= @s C_JungleN unless score @s C_JungleL matches 9.. run function collections:update_collections/foraging/jungle/levelup
scoreboard players reset @p C_Jungle
scoreboard players reset @p C_JungleWood
#------------------------------------------#