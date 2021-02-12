#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{knockback:{identifier:1b}}].knockback.bonus int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].knockback.level 3

data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:knockback",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:knockback"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{knockback:{identifier:1b}}].knockback.level
#------------------------------------------#