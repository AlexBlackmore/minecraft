#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------TEST FOR CRIT--------------#
execute unless score @s S_HealingRedu matches ..0 run scoreboard players operation $HealingReduction Temp = $HealAmount Temp
execute unless score @s S_HealingRedu matches ..0 run scoreboard players operation $HealingReduction Temp *= @s S_HealingRedu
execute unless score @s S_HealingRedu matches ..0 run scoreboard players operation $HealingReduction Temp /= c100 Constant
execute unless score @s S_HealingRedu matches ..0 run scoreboard players operation $HealAmount Temp -= $HealingReduction Temp

scoreboard players operation @s PlayerHP += $HealAmount Temp
function stats:calculate/current_effective_health
#------------------------------------------#