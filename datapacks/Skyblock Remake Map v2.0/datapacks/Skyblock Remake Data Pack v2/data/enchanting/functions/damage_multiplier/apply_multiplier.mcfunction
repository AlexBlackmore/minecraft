#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
scoreboard players operation $DamageOutput Temp *= $DmgMultTotal Temp
scoreboard players operation $DamageOutput Temp /= c100 Constant
scoreboard players operation $DamageOutput Temp += $DamagePreMultiplier Temp
#------------------------------------------#