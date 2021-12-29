#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
tag @s remove InSlot

function reforges:menu/return_item/0
function reforges:menu/return_item/8
function reforges:menu/return_item/9
function reforges:menu/return_item/17
function reforges:menu/return_item/18
function reforges:menu/return_item/26

data modify storage blue:reforge TempItemChange1 set from entity @s Items[{Slot:21b}].tag.ItemChange1
data remove entity @s Items[{Slot:21b}]
loot replace entity @s container.21 loot reforges:menu/button/can_reforge
data modify entity @s Items[{Slot:21b}].tag.ItemChange1 set from storage blue:reforge TempItemChange1

data remove entity @s Items[{Slot:21b}]
loot replace entity @s container.21 loot reforges:menu/button/air
