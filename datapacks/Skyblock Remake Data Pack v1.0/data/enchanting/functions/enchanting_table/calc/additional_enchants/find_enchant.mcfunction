#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ADDITIONAL ENCHANTS------------#
function enchanting:enchanting_table/calc/weight_simulator
#------------STORE ENCHANT DATA------------#
execute if entity @e[tag=EnchantStandSel] if score @s E_SelectedSlot = @s E_TopSlot run data modify storage blue:enchanting EnchantData[0] append from entity @e[tag=EnchantStandSel,limit=1] HandItems[0].tag.EnchantData[0]
execute if entity @e[tag=EnchantStandSel] if score @s E_SelectedSlot = @s E_MidSlot run data modify storage blue:enchanting EnchantData[1] append from entity @e[tag=EnchantStandSel,limit=1] HandItems[0].tag.EnchantData[0]
execute if entity @e[tag=EnchantStandSel] if score @s E_SelectedSlot = @s E_LowSlot run data modify storage blue:enchanting EnchantData[2] append from entity @e[tag=EnchantStandSel,limit=1] HandItems[0].tag.EnchantData[0]

scoreboard players operation @s E_ModifiedBase /= c2 Constant
function enchanting:enchanting_table/calc/additional_enchants/add_test
#------------------------------------------#