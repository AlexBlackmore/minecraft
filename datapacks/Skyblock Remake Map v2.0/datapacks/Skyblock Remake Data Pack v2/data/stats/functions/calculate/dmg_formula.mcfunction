#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------BASE FORMULA---------------#
scoreboard players operation $StrengthMultiplier Temp = $WeaponStrength Temp
scoreboard players add $StrengthMultiplier Temp 100
scoreboard players operation $DamageOutput Temp = $WeaponDamage Temp
scoreboard players operation $DamageOutput Temp *= $StrengthMultiplier Temp
scoreboard players operation $DamageOutput Temp /= c100 Constant
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow,tag=PiercingSecondary] run scoreboard players operation $DamageOutput Temp /= c4 Constant
scoreboard players operation $DamagePreMultiplier Temp = $DamageOutput Temp
#------------------------------------------#