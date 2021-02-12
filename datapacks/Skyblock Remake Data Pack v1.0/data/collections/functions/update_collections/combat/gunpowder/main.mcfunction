#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Gunpowder += @p C_Gunpowder
execute if score @s C_Gunpowder >= @s C_GunpowderN unless score @s C_GunpowderL matches 9.. run function collections:update_collections/combat/gunpowder/levelup
scoreboard players reset @p C_Gunpowder
#------------------------------------------#