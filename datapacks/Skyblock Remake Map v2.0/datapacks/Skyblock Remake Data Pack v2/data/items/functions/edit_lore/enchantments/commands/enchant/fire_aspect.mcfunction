#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ENCHANTMENT COMMANDS-----------#
execute store result score @s E_StatCalc run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].fire_aspect.level
scoreboard players add @s E_StatCalc 2
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{fire_aspect:{identifier:1b}}].fire_aspect.duration int 1 run scoreboard players get @s E_StatCalc
execute store result storage blue:lore_builder ItemStorage.Base.Enchantments[{fire_aspect:{identifier:1b}}].fire_aspect.damage int 1 run data get storage blue:lore_builder ItemStorage.Base.Enchantments[].fire_aspect.level 5
#------------------------------------------#