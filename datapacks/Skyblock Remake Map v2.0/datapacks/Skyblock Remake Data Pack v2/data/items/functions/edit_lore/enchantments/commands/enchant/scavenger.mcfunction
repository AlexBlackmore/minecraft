#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{scavenger:{identifier:1b}}].scavenger.bonus_float float 0.3 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].scavenger.level 1
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{scavenger:{identifier:1b}}].scavenger.bonus_pt1 int 0.3 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].scavenger.level 1
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].scavenger.level 3
scoreboard players operation @s E_StatCalc %= c10 Constant
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{scavenger:{identifier:1b}}].scavenger.bonus_pt2 int 1 run scoreboard players get @s E_StatCalc
#------------------------------------------#