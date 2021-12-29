#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base.Reforge run tag @s add InSlot

function reforges:menu/return_item/0
function reforges:menu/return_item/8
function reforges:menu/return_item/9
function reforges:menu/return_item/17
function reforges:menu/return_item/18
function reforges:menu/return_item/26

execute if data storage blue:reforge Items[{Slot:13b}].tag.Base.Reforge run function reforges:menu/change_item/add_success
execute unless data storage blue:reforge Items[{Slot:13b}].tag.Base.Reforge run loot replace entity @s container.21 loot reforges:menu/button/cant_reforge
