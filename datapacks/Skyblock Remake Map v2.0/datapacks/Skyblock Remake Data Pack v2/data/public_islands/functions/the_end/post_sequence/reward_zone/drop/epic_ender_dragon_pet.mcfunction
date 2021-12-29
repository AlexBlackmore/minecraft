#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
loot give @s loot cheats:get_items/pet/ender_dragon/epic
tellraw @a ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"[Lvl 1] ","color":"gray"},{"text":"Ender Dragon","color":"dark_purple"},{"text":"!","color":"yellow"}]
scoreboard players remove @s End_DropWeight 450
tag @s add End_MajorLootGiven
#------------------------------------------#