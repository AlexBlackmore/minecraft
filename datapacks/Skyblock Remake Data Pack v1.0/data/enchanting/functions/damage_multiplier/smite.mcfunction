#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{smite:{identifier:1b}}].smite.bonus
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#