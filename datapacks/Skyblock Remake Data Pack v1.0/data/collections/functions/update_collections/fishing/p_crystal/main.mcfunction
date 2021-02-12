#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Pcrystal += @p C_Pcrystal
execute if score @s C_Pcrystal >= @s C_PcrystalN unless score @s C_PcrystalL matches 7.. run function collections:update_collections/fishing/p_crystal/levelup
scoreboard players reset @p C_Pcrystal
#------------------------------------------#