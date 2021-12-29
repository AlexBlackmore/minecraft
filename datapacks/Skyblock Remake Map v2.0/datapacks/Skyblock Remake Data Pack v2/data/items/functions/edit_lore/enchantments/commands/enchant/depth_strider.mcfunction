#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].depth_strider.level
execute if entity @s[scores={E_StatCalc=1}] run data modify storage blue:lore_builder ItemStorage.Base.Enchantments[{depth_strider:{identifier:1b}}].depth_strider.bonus set value 33
execute if entity @s[scores={E_StatCalc=2}] run data modify storage blue:lore_builder ItemStorage.Base.Enchantments[{depth_strider:{identifier:1b}}].depth_strider.bonus set value 66
execute if entity @s[scores={E_StatCalc=3..}] run data modify storage blue:lore_builder ItemStorage.Base.Enchantments[{depth_strider:{identifier:1b}}].depth_strider.bonus set value 100

data modify storage blue:lore_builder ItemStorage.Enchantments append value {id:"minecraft:depth_strider",lvl:1s}
data modify storage blue:lore_builder ItemStorage.Enchantments[{id:"minecraft:depth_strider"}].lvl set from storage blue:lore_builder ItemStorage.Base.Enchantments[{depth_strider:{identifier:1b}}].depth_strider.level
#------------------------------------------#