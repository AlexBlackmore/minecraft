#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------GET PLAYER XP---------------#
execute at @a[distance=..6] if score @s PlayerID = @p PlayerID store result score @p E_XPLevel run xp query @p levels
#-----------CHECK IF SUCCESSFUL------------#
execute if entity @s[tag=AnvilPairSuccess] if score @s Anvil_Level <= @p E_XPLevel run function anvils:normal/combining/combine_succeed
execute if entity @s[tag=AnvilPairSuccess] unless score @s Anvil_Level <= @p E_XPLevel run function anvils:normal/combining/combine_failed
tag @s remove AnvilPairSuccess

data modify storage blue:anvil Items set from entity @s Items
execute unless data storage blue:anvil Items[{Slot:20b}] run data modify storage blue:anvil Items[{Slot:20b}].id set value "minecraft:air"
execute unless data storage blue:anvil Items[{Slot:24b}] run data modify storage blue:anvil Items[{Slot:24b}].id set value "minecraft:air"
function anvils:normal/menu/return_item/13
data modify entity @s Items[{Slot:13b}].tag.ItemChange1 set value {Slot:20b,id:"minecraft:air"}
data modify entity @s Items[{Slot:13b}].tag.ItemChange2 set value {Slot:24b,id:"minecraft:air"}
#------------------------------------------#