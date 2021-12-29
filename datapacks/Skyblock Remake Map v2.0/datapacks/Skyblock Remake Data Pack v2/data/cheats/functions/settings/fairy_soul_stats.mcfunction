#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add @p FoundFairySouls 5
execute if score @p FoundFairySouls matches 226.. run scoreboard players set @p FoundFairySouls 0
function stats:calculate/stats

tellraw @p ["",{"text":"You now have the bonuses of ","color":"white"},{"score":{"name":"@p","objective":"FoundFairySouls"},"color":"light_purple"},{"text":" Fairy Souls","color":"light_purple"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#