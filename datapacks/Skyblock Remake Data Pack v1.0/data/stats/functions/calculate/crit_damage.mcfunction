#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------TEST FOR CRIT--------------#
scoreboard players operation $CritDamage Temp = @e[sort=nearest,limit=1,tag=TargetEntity] P_CritDamage
scoreboard players add $CritDamage Temp 100

scoreboard players operation $DamageOutput Temp *= $CritDamage Temp
scoreboard players operation $DamageOutput Temp /= c100 Constant
tag @s add TakenCrit
#------------------------------------------#