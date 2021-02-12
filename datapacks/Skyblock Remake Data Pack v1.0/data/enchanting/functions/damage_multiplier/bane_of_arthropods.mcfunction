#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{bane_of_arthropods:{identifier:1b}}].bane_of_arthropods.bonus
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#