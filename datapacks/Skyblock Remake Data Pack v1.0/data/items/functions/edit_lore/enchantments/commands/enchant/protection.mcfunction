#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].protection.level 3
scoreboard players operation @s Ench_Defense += @s E_StatCalc

execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{protection:{identifier:1b}}].protection.bonus int 1 run scoreboard players get @s E_StatCalc
#------------------------------------------#