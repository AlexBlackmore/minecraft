#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:looting",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:looting"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{looting:{identifier:1b}}].looting.level

execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{looting:{identifier:1b}}].looting.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].looting.level 15
#------------------------------------------#