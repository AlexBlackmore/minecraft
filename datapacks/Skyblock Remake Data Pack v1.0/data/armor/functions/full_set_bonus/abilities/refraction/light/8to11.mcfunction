#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------FULL SET BONUS--------------#
execute if predicate minecraft:light/exact/8 unless entity @s[scores={I_LightLevel=8}] run function armor:full_set_bonus/abilities/refraction/state/8
execute if predicate minecraft:light/exact/9 unless entity @s[scores={I_LightLevel=9}] run function armor:full_set_bonus/abilities/refraction/state/9
execute if predicate minecraft:light/exact/10 unless entity @s[scores={I_LightLevel=10}] run function armor:full_set_bonus/abilities/refraction/state/10
execute if predicate minecraft:light/exact/11 unless entity @s[scores={I_LightLevel=11}] run function armor:full_set_bonus/abilities/refraction/state/11
#------------------------------------------#