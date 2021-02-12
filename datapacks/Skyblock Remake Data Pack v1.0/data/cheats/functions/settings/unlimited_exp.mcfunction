#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add UnlimitedEXP Setting 1
execute if score UnlimitedEXP Setting matches 2.. run scoreboard players set UnlimitedEXP Setting 0

execute if score UnlimitedEXP Setting matches 1 as @a store result score @s StoredEXP run xp query @s levels
execute if score UnlimitedEXP Setting matches 0 as @a run function cheats:settings/resources/restore_exp

execute if score UnlimitedEXP Setting matches 1 run tellraw @a ["",{"text":"You will now recieve Unlimited EXP.","color":"green"}]
execute if score UnlimitedEXP Setting matches 0 run tellraw @a ["",{"text":"You will no longer recieve Unlimited EXP.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#