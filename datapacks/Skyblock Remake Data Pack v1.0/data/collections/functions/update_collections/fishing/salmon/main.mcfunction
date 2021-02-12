#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Salmon += @p C_Salmon
execute if score @s C_Salmon >= @s C_SalmonN unless score @s C_SalmonL matches 9.. run function collections:update_collections/fishing/salmon/levelup
scoreboard players reset @p C_Salmon
#------------------------------------------#