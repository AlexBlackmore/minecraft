#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute store result score $EnchantLevel Temp run data get entity @s SelectedItem.tag.Base.Enchantments[{blessing:{identifier:1b}}].blessing.bonus
execute if score out RandMath <= $EnchantLevel Temp as @e[type=item,nbt={Age:0s}] run function enchanting:enchants/blessing/success
#------------------------------------------#