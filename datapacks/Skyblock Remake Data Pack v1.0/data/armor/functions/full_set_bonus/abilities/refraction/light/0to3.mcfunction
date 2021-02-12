#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------FULL SET BONUS--------------#
execute if predicate minecraft:light/exact/0 unless entity @s[scores={I_LightLevel=0}] run function armor:full_set_bonus/abilities/refraction/state/0
execute if predicate minecraft:light/exact/1 unless entity @s[scores={I_LightLevel=1}] run function armor:full_set_bonus/abilities/refraction/state/1
execute if predicate minecraft:light/exact/2 unless entity @s[scores={I_LightLevel=2}] run function armor:full_set_bonus/abilities/refraction/state/2
execute if predicate minecraft:light/exact/3 unless entity @s[scores={I_LightLevel=3}] run function armor:full_set_bonus/abilities/refraction/state/3
#------------------------------------------#