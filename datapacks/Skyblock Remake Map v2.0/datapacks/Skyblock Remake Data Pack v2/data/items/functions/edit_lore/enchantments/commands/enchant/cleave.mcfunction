#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{cleave:{identifier:1b}}].cleave.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].cleave.level 3

execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].cleave.level 3
scoreboard players add @s E_StatCalc 30
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{cleave:{identifier:1b}}].cleave.range_float float 0.1 run scoreboard players get @s E_StatCalc
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{cleave:{identifier:1b}}].cleave.range_pt1 int 0.1 run scoreboard players get @s E_StatCalc
scoreboard players operation @s E_StatCalc %= c10 Constant
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{cleave:{identifier:1b}}].cleave.range_pt2 int 1 run scoreboard players get @s E_StatCalc
#------------------------------------------#