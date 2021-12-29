#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------ANVIL-------------------#
execute if entity @s[tag=AnvilCombined] run function anvils:normal/menu/change_item/force_give_item
tag @s add InSlot2
function anvils:normal/menu/return_item/5
function anvils:normal/menu/return_item/6
function anvils:normal/menu/return_item/15

execute unless data storage blue:anvil {Items:[{Slot:20b,id:"minecraft:air"}]} run function anvils:normal/menu/change_item/both_items
#------------------------------------------#