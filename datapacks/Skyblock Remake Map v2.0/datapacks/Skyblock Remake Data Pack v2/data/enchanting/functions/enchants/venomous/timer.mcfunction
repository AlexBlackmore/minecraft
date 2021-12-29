#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------VENOMOUS TIMER---------------#
scoreboard players remove @s E_VenomousTime 1
execute if entity @s[scores={E_VenomousTime=60}] run function enchanting:enchants/venomous/hit
execute if entity @s[scores={E_VenomousTime=40}] run function enchanting:enchants/venomous/hit
execute if entity @s[scores={E_VenomousTime=20}] run function enchanting:enchants/venomous/hit
execute if entity @s[scores={E_VenomousTime=0}] run function enchanting:enchants/venomous/end
#------------------------------------------#