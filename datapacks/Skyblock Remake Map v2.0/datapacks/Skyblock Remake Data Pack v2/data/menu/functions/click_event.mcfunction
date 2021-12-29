#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
scoreboard players set @s M_PageDelay 1

#Unless a block GUI (anvil, ench table, crafting table): play click sound
execute unless score @s M_CurrentPage matches 84..86 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1 1
#------------------------------------------#