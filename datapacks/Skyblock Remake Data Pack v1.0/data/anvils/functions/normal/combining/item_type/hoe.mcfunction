#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ENCHANTMENT LIST-------------#
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].harvesting run function anvils:normal/combining/combine/enchantments/harvesting
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].replenish run function anvils:normal/combining/combine/enchantments/replenish
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[].telekinesis run function anvils:normal/combining/combine/enchantments/telekinesis
#------------------------------------------#