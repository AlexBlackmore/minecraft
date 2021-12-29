#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ENCHANTMENT LIST-------------#
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].efficiency run function anvils:normal/combining/combine/enchantments/efficiency
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].experience run function anvils:normal/combining/combine/enchantments/experience
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].fortune run function anvils:normal/combining/combine/enchantments/fortune
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].silk_touch run function anvils:normal/combining/combine/enchantments/silk_touch
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].smelting_touch run function anvils:normal/combining/combine/enchantments/smelting_touch
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].telekinesis run function anvils:normal/combining/combine/enchantments/telekinesis
#------------------------------------------#