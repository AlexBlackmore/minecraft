#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#==========================================#
#---------------WARDEN HELMET--------------#
scoreboard players operation $WardenDamageBonus Temp = $WeaponDamage Temp
scoreboard players operation $WardenDamageBonus Temp *= @s WardenBonus
scoreboard players operation $WardenDamageBonus Temp /= c100 Constant
scoreboard players operation $WeaponDamage Temp += $WardenDamageBonus Temp
#------------------------------------------#