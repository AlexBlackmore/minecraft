#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{life_steal:{identifier:1b}}].life_steal.bonus_float float 0.1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].life_steal.level 1
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{life_steal:{identifier:1b}}].life_steal.bonus_pt1 int 0.1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].life_steal.level 1
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].life_steal.level
scoreboard players operation @s E_StatCalc %= c10 Constant
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{life_steal:{identifier:1b}}].life_steal.bonus_pt2 int 1 run scoreboard players get @s E_StatCalc
#------------------------------------------#