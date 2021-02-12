#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------FAILED BY DEFAULT-------------#
tag @s remove AnvilPairSuccess
function anvils:normal/menu/change_item/deactivate_slots
#-------ENCHANTED BOOK AUTO SUCCESS--------#
execute if data storage blue:anvil Items[{Slot:20b}].tag.Base.AnvilUses if data storage blue:anvil {Items:[{Slot:24b,id:"minecraft:enchanted_book"}]} run function anvils:normal/menu/new_pair
#------------SAME ITEM SUCCESS-------------#
data modify storage blue:anvil MatchTest set from entity @s Items[{Slot:20b}].tag.display.Name
execute store success score @s MenuItemChange run data modify storage blue:anvil MatchTest set from storage blue:anvil Items[{Slot:24b}].tag.display.Name
execute if data storage blue:anvil Items[{Slot:20b}].tag.Base.AnvilUses if data storage blue:anvil Items[{Slot:24b}].tag.Base.AnvilUses if entity @s[scores={MenuItemChange=0}] run function anvils:normal/menu/new_pair
#------------------------------------------#