#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:efficiency",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:efficiency"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{efficiency:{identifier:1b}}].efficiency.level
#------------------------------------------#