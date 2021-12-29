#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Sponge += @p C_Sponge
execute if score @s C_Sponge >= @s C_SpongeN unless score @s C_SpongeL matches 9.. run function collections:update_collections/fishing/sponge/levelup
scoreboard players reset @p C_Sponge
#------------------------------------------#