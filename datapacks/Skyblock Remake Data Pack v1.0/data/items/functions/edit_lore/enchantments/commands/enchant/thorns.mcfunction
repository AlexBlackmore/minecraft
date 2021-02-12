#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:thorns",lvl:3s}
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{thorns:{identifier:1b}}].thorns.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].thorns.level 3
#------------------------------------------#