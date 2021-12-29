#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------REMNANT SAVE----------------#
scoreboard players operation @s PlayerEHP = @s P_EHP
scoreboard players operation @s PlayerHP = @s P_Health
scoreboard players set @s P_Invincibility 60
clear @s minecraft:warped_fungus_on_a_stick{RemnantEye:1b} 1
execute if score @s P_Y matches ..-10 run tellraw @s [{"text":"Your Remnant of the Eye saved you from certain death! You were safely teleported back to spawn.","color":"dark_purple"}]
execute if score @s P_Y matches ..-10 in skyblock:the_end run tp @s 168.0 101 1.0 90 0
execute unless score @s P_Y matches ..-10 run tellraw @s [{"text":"Your Remnant of the Eye saved you from certain death!","color":"dark_purple"}]
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5 1
tag @s remove RemnantSave
#------------------------------------------#