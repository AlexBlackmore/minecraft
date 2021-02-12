#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Seeds += @p C_Seeds
execute if score @s C_Seeds >= @s C_SeedsN unless score @s C_SeedsL matches 6.. run function collections:update_collections/farming/seeds/levelup
scoreboard players reset @p C_Seeds
#------------------------------------------#