#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------CREATE ITEM NBT--------------#
scoreboard players set @s Anvil_Level 0
data merge storage blue:anvil {ResultItem:{Slot:4b,id:"minecraft:air",Count:1b}}
data modify storage blue:anvil ResultItem.id set from storage blue:anvil Items[{Slot:20b}].id
data modify storage blue:anvil ResultItem.tag set from storage blue:anvil Items[{Slot:20b}].tag
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"HELMET"}}}} run function anvils:normal/combining/item_type/helmet
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"CHESTPLATE"}}}} run function anvils:normal/combining/item_type/chestplate
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"LEGGINGS"}}}} run function anvils:normal/combining/item_type/armor
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"BOOTS"}}}} run function anvils:normal/combining/item_type/boots
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"SWORD"}}}} run function anvils:normal/combining/item_type/sword
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"BOW"}}}} run function anvils:normal/combining/item_type/bow
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"AXE"}}}} run function anvils:normal/combining/item_type/axe
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"PICKAXE"}}}} run function anvils:normal/combining/item_type/pickaxe
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"SHOVEL"}}}} run function anvils:normal/combining/item_type/shovel
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"HOE"}}}} run function anvils:normal/combining/item_type/hoe
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"SHEARS"}}}} run function anvils:normal/combining/item_type/shears
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:"FISHING ROD"}}}} run function anvils:normal/combining/item_type/fishing_rod
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[0] if data storage blue:anvil {ResultItem:{tag:{Base:{Type:""}}}} run function anvils:normal/combining/item_type/book
scoreboard players operation @s Anvil_Level /= c10 Constant
#------------ADD ENCHANT GLINT-------------#
execute if data storage blue:anvil ResultItem.tag.Base.Enchantments[0] run function anvils:normal/combining/create_item_succeed
execute unless data storage blue:anvil ResultItem.tag.Base.Enchantments[0] run function anvils:normal/combining/create_item_failed
#------------------------------------------#