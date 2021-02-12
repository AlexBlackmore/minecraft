#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------ANVIL-------------------#
tag @s add AnvilCombined
tag @s remove AnvilPairSuccess
tag @s remove InSlot1
function anvils:normal/menu/return_item/2
function anvils:normal/menu/return_item/3
function anvils:normal/menu/return_item/11
tag @s remove InSlot2
function anvils:normal/menu/return_item/5
function anvils:normal/menu/return_item/6
function anvils:normal/menu/return_item/15

function items:edit_lore/begin/anvil
data remove entity @s Items[{Slot:4b}].tag.SkyblockMenu
#------------------------------------------#