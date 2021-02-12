#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Magmacream += @p C_Magmacream
execute if score @s C_Magmacream >= @s C_MagmacreamN unless score @s C_MagmacreamL matches 9.. run function collections:update_collections/combat/magma_cream/levelup
scoreboard players reset @p C_Magmacream
#------------------------------------------#