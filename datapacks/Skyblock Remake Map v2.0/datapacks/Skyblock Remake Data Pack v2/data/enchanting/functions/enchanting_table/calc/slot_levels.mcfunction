#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#Top slot enchantment level = max(base / 3, 1)
#Middle slot enchantment level = (base × 2) / 3 + 1
#Bottom slot enchantment level = max(base, b × 2)
#---------------BASE LEVEL-----------------#
function enchanting:enchanting_table/calc/base_level
#----------------TOP SLOT------------------#
scoreboard players operation @s E_TopSlot = @s E_BaseEnchLevel
scoreboard players operation @s E_TopSlot /= c3 Constant
scoreboard players set @s[scores={E_TopSlot=..0}] E_TopSlot 1
#----------------MID SLOT------------------#
scoreboard players operation @s E_MidSlot = @s E_BaseEnchLevel
scoreboard players operation @s E_MidSlot *= c2 Constant
scoreboard players operation @s E_MidSlot /= c3 Constant
scoreboard players add @s E_MidSlot 1
#----------------LOW SLOT------------------#
scoreboard players operation @s E_LowSlot = @s E_AddBookshelves
scoreboard players operation @s E_LowSlot *= c2 Constant
execute if score @s E_LowSlot < @s E_BaseEnchLevel run scoreboard players operation @s E_LowSlot = @s E_BaseEnchLevel
#------------------------------------------#