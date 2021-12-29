#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
loot give @s loot cheats:get_items/reforge_stones/dragon_horn
tellraw @a ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Dragon Horn","color":"dark_purple"},{"text":"!","color":"yellow"}]
tag @s add End_MajorLootGiven
#------------------------------------------#