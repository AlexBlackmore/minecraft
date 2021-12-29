#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{punch:{identifier:1b}}].punch.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].punch.level 3

data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:punch",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:punch"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{punch:{identifier:1b}}].punch.level
#------------------------------------------#