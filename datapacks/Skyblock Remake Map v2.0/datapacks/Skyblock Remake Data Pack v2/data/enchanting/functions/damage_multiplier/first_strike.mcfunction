#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{first_strike:{identifier:1b}}].first_strike.bonus
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
tag @s add FirstStriked
#------------------------------------------#