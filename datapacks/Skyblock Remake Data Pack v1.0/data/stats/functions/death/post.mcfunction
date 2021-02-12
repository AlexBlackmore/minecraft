#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DEATH-------------------#
tellraw @s [{"text":"You died!","color":"red"}]
scoreboard players operation @s PlayerEHP = @s P_EHP
scoreboard players operation @s PlayerHP = @s P_Health
function profiling:coins/half
scoreboard players set @s[scores={Location=-1}] Location 1
#execute unless entity @s[scores={Location=0}] run function public_islands:location_changed
scoreboard players reset @s Death
#------------ADJUST SPAWNPOINT-------------#
execute if entity @s[scores={Location=7}] at @s run tp @s ~-.5 ~ ~
execute if entity @s[scores={Location=8}] at @s run tp @s ~-.5 ~ ~-.5 ~-90 ~
execute if entity @s[scores={Location=20}] at @s run tp @s ~-0.5 ~ ~0.5 ~ ~
#--------------STATS UPDATES---------------#
tag @s add DeathPostDelay
#------------------------------------------#