#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add SuperiorDragChances Setting 16
execute if score SuperiorDragChances Setting matches 101.. run scoreboard players set SuperiorDragChances Setting 4

tellraw @a ["",{"text":"Chances of getting a Superior Dragon are now: ","color":"white"},{"score":{"name":"SuperiorDragChances","objective":"Setting"},"color":"blue"},{"text":"%","color":"blue"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#