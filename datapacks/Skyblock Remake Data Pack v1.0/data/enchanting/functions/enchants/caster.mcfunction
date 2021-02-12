#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
execute store result score @s F_KeepBaitChan run data get entity @s SelectedItem.tag.Base.Enchantments[{caster:{identifier:1b}}].caster.level
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath <= @s F_KeepBaitChan run say keep bait
execute unless score out RandMath <= @s F_KeepBaitChan run say take bait
#------------------------------------------#