#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{respiration:{identifier:1b}}].respiration.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].respiration.level 15

data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:respiration",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:respiration"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{respiration:{identifier:1b}}].respiration.level
#------------------------------------------#