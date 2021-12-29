#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add CooldownsEnabled Setting 1
execute if score CooldownsEnabled Setting matches 2.. run scoreboard players set CooldownsEnabled Setting 0

execute if score CooldownsEnabled Setting matches 1 run tellraw @a ["",{"text":"Right click item abilities will now have cooldowns.","color":"green"}]
execute if score CooldownsEnabled Setting matches 0 run tellraw @a ["",{"text":"Right click item abilities will not have cooldowns.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#