#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].true_protection.level 5
scoreboard players operation @s Ench_TrueDef += @s E_StatCalc

execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{true_protection:{identifier:1b}}].true_protection.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].true_protection.level 5
execute store result storage blue:lore_builder ItemStorage.Base.TrueDef int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].true_protection.level 5
#------------------------------------------#