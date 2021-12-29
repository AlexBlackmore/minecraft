#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add CapEnchantLevels Setting 1
execute if score CapEnchantLevels Setting matches 2.. run scoreboard players set CapEnchantLevels Setting 0

execute if score CapEnchantLevels Setting matches 1 run tellraw @a ["",{"text":"Enchantment Levels when combining in the anvil will now be capped.","color":"green"}]
execute if score CapEnchantLevels Setting matches 0 run tellraw @a ["",{"text":"Enchantment Levels when combining in the anvil will no longer be capped.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#