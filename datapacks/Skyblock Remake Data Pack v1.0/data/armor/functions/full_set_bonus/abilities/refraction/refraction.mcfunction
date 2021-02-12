#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------FULL SET BONUS--------------#
execute if predicate minecraft:light/range/0to7 run function armor:full_set_bonus/abilities/refraction/light/0to7
execute if predicate minecraft:light/range/8to15 run function armor:full_set_bonus/abilities/refraction/light/8to15
scoreboard players reset Temp_Col I_LightLevel
#------------------------------------------#