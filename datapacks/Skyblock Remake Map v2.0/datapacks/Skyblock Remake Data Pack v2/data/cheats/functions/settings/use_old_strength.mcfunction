#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add OldStrength Setting 1
execute if score OldStrength Setting matches 2.. run scoreboard players set OldStrength Setting 0

execute if score OldStrength Setting matches 1 run tellraw @a ["",{"text":"The damage formula will now use the old strength.","color":"green"}]
execute if score OldStrength Setting matches 0 run tellraw @a ["",{"text":"The damage formula will now use the new strength.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#