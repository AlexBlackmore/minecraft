#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------ANVIL-------------------#
execute if entity @s[tag=AnvilCombined] run function anvils:normal/menu/change_item/force_give_item
tag @s add InSlot1
function anvils:normal/menu/return_item/2
function anvils:normal/menu/return_item/3
function anvils:normal/menu/return_item/11
execute unless data storage blue:anvil {Items:[{Slot:24b,id:"minecraft:air"}]} run function anvils:normal/menu/change_item/both_items
#------------------------------------------#