#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{execute:{identifier:1b}}].execute.bonus_float float 0.2 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].execute.level 1
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{execute:{identifier:1b}}].execute.bonus_pt1 int 0.2 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].execute.level 1
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].execute.level 2
scoreboard players operation @s E_StatCalc %= c10 Constant
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{execute:{identifier:1b}}].execute.bonus_pt2 int 1 run scoreboard players get @s E_StatCalc
#------------------------------------------#