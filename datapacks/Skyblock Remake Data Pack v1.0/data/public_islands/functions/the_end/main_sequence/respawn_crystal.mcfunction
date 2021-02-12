#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------DURING DRAG SEQUENCE-----------#
scoreboard players set @s End_DragSeq 0
tellraw @a[scores={Location=8}] ["",{"text":"☬ ","color":"dark_purple"},{"text":"An ","color":"light_purple"},{"text":"Ender Crystal","color":"dark_purple"},{"text":" has respawned!","color":"light_purple"}]
function public_islands:the_end/main_sequence/summon_crystal
#------------------------------------------#