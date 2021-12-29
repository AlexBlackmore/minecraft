#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------GET PLAYER XP---------------#
execute at @a[distance=..6] if score @s PlayerID = @p PlayerID store result score @p E_XPLevel run xp query @p levels
#-----------PLACE ENCHANT ITEMS------------#
execute if score @s E_TopSlot <= @p E_XPLevel run loot replace entity @s container.20 loot enchanting:menu/afford/top_slot
execute unless score @s E_TopSlot <= @p E_XPLevel run loot replace entity @s container.20 loot enchanting:menu/cant_afford/top_slot
execute if score @s E_MidSlot <= @p E_XPLevel run loot replace entity @s container.22 loot enchanting:menu/afford/mid_slot
execute unless score @s E_MidSlot <= @p E_XPLevel run loot replace entity @s container.22 loot enchanting:menu/cant_afford/mid_slot
execute if score @s E_LowSlot <= @p E_XPLevel run loot replace entity @s container.24 loot enchanting:menu/afford/low_slot
execute unless score @s E_LowSlot <= @p E_XPLevel run loot replace entity @s container.24 loot enchanting:menu/cant_afford/low_slot
#--------------SET ITEM COUNT--------------#
execute store result entity @s Items[{Slot:20b}].Count int 1 run scoreboard players get @s E_TopSlot
execute store result entity @s Items[{Slot:22b}].Count int 1 run scoreboard players get @s E_MidSlot
execute store result entity @s Items[{Slot:24b}].Count int 1 run scoreboard players get @s E_LowSlot
#--------------UPDATE STORAGE--------------#
data modify storage blue:enchanting Items set from entity @s Items
#------------------------------------------#