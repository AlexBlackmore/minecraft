#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ON ITEM ADDED UPDATE-----------#
execute positioned 17 67 -79 run function enchanting:enchanting_table/enchant_stands
data modify storage blue:enchanting EnchantData set value []
data modify storage blue:enchanting FirstEnchant set value []
execute at @e[tag=EnchantingTable,sort=nearest,limit=1] run function enchanting:enchanting_table/calc/slot_levels
#------------SLOT 1 CALCULATION------------#
scoreboard players operation @s E_SelectedSlot = @s E_TopSlot
function enchanting:enchanting_table/calc/first_enchantment
function enchanting:enchanting_table/calc/additional_enchants/add_test
#------------SLOT 2 CALCULATION------------#
scoreboard players operation @s E_SelectedSlot = @s E_MidSlot
function enchanting:enchanting_table/calc/first_enchantment
function enchanting:enchanting_table/calc/additional_enchants/add_test
#------------SLOT 3 CALCULATION------------#
scoreboard players operation @s E_SelectedSlot = @s E_LowSlot
function enchanting:enchanting_table/calc/first_enchantment
function enchanting:enchanting_table/calc/additional_enchants/add_test
#--------------DEBUG MESSAGES--------------#
#tellraw @p ["\n",{"nbt":"EnchantData[0]","storage":"blue:enchanting","color":"red"}]
#tellraw @p ["\n",{"nbt":"EnchantData[1]","storage":"blue:enchanting","color":"green"}]
#tellraw @p ["\n",{"nbt":"EnchantData[2]","storage":"blue:enchanting","color":"aqua"}]
#----------------PLACE ITEMS---------------#
function enchanting:enchanting_table/place_slots
#---------------SAVE FOR LATER-------------#
data modify entity @s Items[{Slot:0b}].tag.EnchantData set from storage blue:enchanting EnchantData
data modify entity @s Items[{Slot:0b}].tag.FirstEnchant set from storage blue:enchanting FirstEnchant
data modify entity @s Items[{Slot:1b}].tag.EnchantData set from storage blue:enchanting EnchantData
data modify entity @s Items[{Slot:1b}].tag.FirstEnchant set from storage blue:enchanting FirstEnchant
#----------------KILL STANDS---------------#
kill @e[tag=EnchantStand]
#------------------------------------------#