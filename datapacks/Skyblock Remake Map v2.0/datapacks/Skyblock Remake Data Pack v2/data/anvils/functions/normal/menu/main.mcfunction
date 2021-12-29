#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
data modify storage blue:anvil Items set from entity @s Items
execute unless data storage blue:anvil Items[{Slot:4b}] run data modify storage blue:anvil Items[{Slot:4b}].id set value "minecraft:air"
execute unless data storage blue:anvil Items[{Slot:20b}] run data modify storage blue:anvil Items[{Slot:20b}].id set value "minecraft:air"
execute unless data storage blue:anvil Items[{Slot:24b}] run data modify storage blue:anvil Items[{Slot:24b}].id set value "minecraft:air"


execute unless data storage blue:anvil Items[{Slot:13b}].tag.AnvilCombine run function anvils:normal/combining/level_check
execute if data storage blue:anvil {Items:[{Slot:4b,id:"minecraft:air"}]} run function anvils:normal/menu/change_item/force_give_item

function anvils:normal/menu/player_moving
#------------------ANVIL-------------------#
#tellraw @p ["",{"nbt":"Items[{Slot:20b}]","storage":"blue:anvil","color":"dark_red"},{"nbt":"Items[{Slot:13b}].tag.ItemChange1","entity":"@s","color":"green"}]
execute store success score @s MenuItemChange run data modify entity @s Items[{Slot:13b}].tag.ItemChange1 set from storage blue:anvil Items[{Slot:20b}]
execute unless data storage blue:anvil {Items:[{Slot:20b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function anvils:normal/menu/change_item/slot_1_add
execute if data storage blue:anvil {Items:[{Slot:20b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function anvils:normal/menu/change_item/slot_1_remove
execute store success score @s MenuItemChange run data modify entity @s Items[{Slot:13b}].tag.ItemChange2 set from storage blue:anvil Items[{Slot:24b}]
execute unless data storage blue:anvil {Items:[{Slot:24b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function anvils:normal/menu/change_item/slot_2_add
execute if data storage blue:anvil {Items:[{Slot:24b,id:"minecraft:air"}]} if entity @s[scores={MenuItemChange=1}] run function anvils:normal/menu/change_item/slot_2_remove
#------------------------------------------#