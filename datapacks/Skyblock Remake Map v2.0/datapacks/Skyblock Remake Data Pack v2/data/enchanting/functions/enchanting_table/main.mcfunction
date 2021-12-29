#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
data modify storage blue:enchanting Items set from entity @s Items

execute if data storage blue:enchanting Items[{Slot:13b}] run function enchanting:enchanting_table/player_moving
execute as @p[distance=..6] store result score @s OldRot run data get entity @s Rotation[0] 1000000
execute as @p[distance=..6] store result score @s PlayerPosXOld run data get entity @s Pos[0] 10
execute as @p[distance=..6] store result score @s PlayerPosYOld run data get entity @s Pos[1] 10
execute as @p[distance=..6] store result score @s PlayerPosZOld run data get entity @s Pos[2] 10
#---------------ENCHANTING-----------------#
execute unless data storage blue:enchanting Items[{Slot:20b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/20
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/22
execute unless data storage blue:enchanting Items[{Slot:24b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/24

execute unless data storage blue:enchanting Items[{Slot:13b}] run data modify storage blue:enchanting Items[{Slot:13b}].tag set value {}
execute store success score @s MenuItemChange run data modify entity @s Items[{Slot:0b}].tag.ItemChange set from storage blue:enchanting Items[{Slot:13b}].tag
execute if entity @s[scores={MenuItemChange=1}] run function enchanting:enchanting_table/slot_change

execute store result score @s EnchantCount run data get storage blue:enchanting Items[{Slot:13b}].Count
execute if entity @s[scores={EnchantCount=1}] run function enchanting:enchanting_table/in_table/one
execute if entity @s[scores={EnchantCount=0}] run function enchanting:enchanting_table/in_table/nothing
execute if entity @s[scores={EnchantCount=2..}] run function enchanting:enchanting_table/in_table/too_many

tag @s remove EnchantChange
#------------------------------------------#