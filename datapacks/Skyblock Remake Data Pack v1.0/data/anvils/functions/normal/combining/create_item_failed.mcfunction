#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------ADD ENCHANT GLINT-------------#
tag @s add Error2
data remove entity @s Items[{Slot:4b}]
data modify entity @s Items prepend value {Slot: 4b, id: "barrier", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"You cannot add that enchantment","color":"gray","italic":false}','{"text":"to that item!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}


tag @s remove InSlot1
function anvils:normal/menu/return_item/2
function anvils:normal/menu/return_item/3
function anvils:normal/menu/return_item/11

tag @s remove InSlot2
function anvils:normal/menu/return_item/5
function anvils:normal/menu/return_item/6
function anvils:normal/menu/return_item/15
#------------------------------------------#