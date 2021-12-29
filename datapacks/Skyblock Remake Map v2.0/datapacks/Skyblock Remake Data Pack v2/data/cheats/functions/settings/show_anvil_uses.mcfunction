#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add ShowAnvilUses Setting 1
execute if score ShowAnvilUses Setting matches 2.. run scoreboard players set ShowAnvilUses Setting 0

execute if score ShowAnvilUses Setting matches 1 run tellraw @a ["",{"text":"Anvil Uses will now appear in the lore of new items.","color":"green"}]
execute if score ShowAnvilUses Setting matches 0 run tellraw @a ["",{"text":"Anvil Uses will no longer appear in the lore of new items.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#