#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add UnlimitedMana Setting 1
execute if score UnlimitedMana Setting matches 2.. run scoreboard players set UnlimitedMana Setting 0

execute if score UnlimitedMana Setting matches 0 as @a run scoreboard players operation @s PlayerMana = @s P_ManaPool

execute if score UnlimitedMana Setting matches 1 run tellraw @a ["",{"text":"You will now recieve Unlimited Mana.","color":"green"}]
execute if score UnlimitedMana Setting matches 0 run tellraw @a ["",{"text":"You will no longer recieve Unlimited Mana.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#