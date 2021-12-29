#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------REGEN AMOUNT---------------#
execute store result storage blue:stats Regen int 1 run scoreboard players get @s P_Health
execute store result score @s P_RegenAmount run data get storage blue:stats Regen 0.0125
execute store result score @s P_RegenAmount2 run data get storage blue:stats Regen 1.25
#------------------------------------------#