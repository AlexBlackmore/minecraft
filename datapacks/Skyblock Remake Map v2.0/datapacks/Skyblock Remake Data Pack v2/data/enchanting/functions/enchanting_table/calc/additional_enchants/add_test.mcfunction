#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ADDITIONAL ENCHANTS------------#
#With probability (modified level + 1) / 50, keep going. Otherwise, stop picking bonus enchantments.
scoreboard players operation @s E_RandPercent = @s E_ModifiedBase
scoreboard players add @s E_RandPercent 1
scoreboard players operation @s E_RandPercent *= c2 Constant

scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg

execute if score out RandMath <= @s E_RandPercent run function enchanting:enchanting_table/calc/additional_enchants/find_enchant
#------------------------------------------#