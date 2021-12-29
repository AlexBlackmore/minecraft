#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ENCHANTMENT LIST-------------#
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].aqua_affinity run function anvils:normal/combining/combine/enchantments/aqua_affinity
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].respiration run function anvils:normal/combining/combine/enchantments/respiration
function anvils:normal/combining/item_type/armor
#------------------------------------------#