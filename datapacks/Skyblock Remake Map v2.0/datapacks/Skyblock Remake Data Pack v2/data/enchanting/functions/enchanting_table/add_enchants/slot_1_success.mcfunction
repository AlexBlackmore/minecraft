#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
data modify entity @s Items[{Slot:13b}].tag merge value {Enchantments:[{}]}
data modify entity @s Items[{Slot:13b}].tag.Base.Enchantments set from entity @s Items[{Slot:0b}].tag.EnchantData[0]
function items:edit_lore/begin/equipment
playsound minecraft:block.enchantment_table.use block @p
scoreboard players operation @p E_XPLevel = @s E_TopSlot
execute as @p[scores={E_XPLevel=32..}] run function enchanting:xp/take/32
execute as @p[scores={E_XPLevel=8..}] run function enchanting:xp/take/8
execute as @p[scores={E_XPLevel=1..}] run function enchanting:xp/take/1
#------------------------------------------#