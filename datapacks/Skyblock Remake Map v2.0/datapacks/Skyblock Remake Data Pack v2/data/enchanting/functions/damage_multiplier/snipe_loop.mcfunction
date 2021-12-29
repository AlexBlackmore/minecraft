#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
scoreboard players add $DmgMult Temp 1
execute unless entity @s[distance=..1.5] positioned ^ ^ ^1 run function enchanting:damage_multiplier/snipe_loop
#------------------------------------------#