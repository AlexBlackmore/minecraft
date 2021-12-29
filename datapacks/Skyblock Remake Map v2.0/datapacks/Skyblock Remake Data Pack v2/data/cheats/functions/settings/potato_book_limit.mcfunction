#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add PotatoBookLimit Setting 1
execute if score PotatoBookLimit Setting matches 2.. run scoreboard players set PotatoBookLimit Setting 0

execute if score PotatoBookLimit Setting matches 1 run tellraw @a ["",{"text":"Hot and Fuming potato books now have their respective limit.","color":"green"}]
execute if score PotatoBookLimit Setting matches 0 run tellraw @a ["",{"text":"Hot and Fuming potato books no longer have their respective limit.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#