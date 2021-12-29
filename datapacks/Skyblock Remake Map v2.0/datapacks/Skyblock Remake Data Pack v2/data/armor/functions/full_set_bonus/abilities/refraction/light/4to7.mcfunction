#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------FULL SET BONUS--------------#
execute if predicate minecraft:light/exact/4 unless entity @s[scores={I_LightLevel=4}] run function armor:full_set_bonus/abilities/refraction/state/4
execute if predicate minecraft:light/exact/5 unless entity @s[scores={I_LightLevel=5}] run function armor:full_set_bonus/abilities/refraction/state/5
execute if predicate minecraft:light/exact/6 unless entity @s[scores={I_LightLevel=6}] run function armor:full_set_bonus/abilities/refraction/state/6
execute if predicate minecraft:light/exact/7 unless entity @s[scores={I_LightLevel=7}] run function armor:full_set_bonus/abilities/refraction/state/7
#------------------------------------------#