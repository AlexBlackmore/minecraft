#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
loot give @s loot cheats:get_items/sword/aspect_of_the_dragons
tellraw @a ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Aspect of the Dragons","color":"gold"},{"text":"!","color":"yellow"}]
scoreboard players remove @s End_DropWeight 450
tag @s add End_MajorLootGiven
#------------------------------------------#