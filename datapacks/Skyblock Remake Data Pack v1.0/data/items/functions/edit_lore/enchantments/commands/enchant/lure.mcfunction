#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:lure",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:lure"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{lure:{identifier:1b}}].lure.level

execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{lure:{identifier:1b}}].lure.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].lure.level 5
#------------------------------------------#