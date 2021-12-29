#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
data modify storage blue:reforge Items set from entity @s Items
execute unless data storage blue:reforge Items[{Slot:13b}] run data modify storage blue:reforge Items[{Slot:13b}].id set value "minecraft:air"

execute at @s as @p unless entity @s[scores={ReforgeCooldown=1..}] as @e[tag=MenuChest,sort=nearest,limit=1] unless data storage blue:reforge Items[{Slot:21b}].tag.SkyblockMenu if entity @s[tag=InSlot] run function reforges:menu/check_coins

function reforges:menu/player_moving

execute store success score @s MenuItemChange run data modify entity @s Items[{Slot:21b}].tag.ItemChange1 set from storage blue:reforge Items[{Slot:13b}]
execute unless data storage blue:reforge {Items:[{Slot:13b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function reforges:menu/change_item/add
execute if data storage blue:reforge {Items:[{Slot:13b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function reforges:menu/change_item/remove