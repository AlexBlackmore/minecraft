#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ENCHANTMENT LIST-------------#
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].depth_strider run function anvils:normal/combining/combine/enchantments/depth_strider
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].feather_falling run function anvils:normal/combining/combine/enchantments/feather_falling
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].frost_walker run function anvils:normal/combining/combine/enchantments/frost_walker
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].sugar_rush run function anvils:normal/combining/combine/enchantments/sugar_rush
function anvils:normal/combining/item_type/armor
#------------------------------------------#