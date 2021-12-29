#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
loot give @s loot cheats:get_items/travel_scroll/dragons_nest
tellraw @a ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Travel Scroll to Dragon\'s Nest","color":"dark_purple"},{"text":"!","color":"yellow"}]
tag @s add End_MajorLootGiven
#------------------------------------------#