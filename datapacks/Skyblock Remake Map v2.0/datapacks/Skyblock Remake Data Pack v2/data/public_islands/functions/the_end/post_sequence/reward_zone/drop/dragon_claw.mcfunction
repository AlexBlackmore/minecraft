#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
loot give @s loot cheats:get_items/reforge_stones/dragon_claw
tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Dragon Claw","color":"blue"},{"text":"!","color":"yellow"}]
tag @s add End_MajorLootGiven
#------------------------------------------#