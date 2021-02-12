#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].sugar_rush.level 2
scoreboard players operation @s Ench_Speed += @s E_StatCalc

execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{sugar_rush:{identifier:1b}}].sugar_rush.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].sugar_rush.level 2
#------------------------------------------#