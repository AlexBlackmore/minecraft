#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------MOVE ITEM TO STORAGE-----------#
data merge storage blue:enchanting {TelekinesisDrops:[]}
execute as @e[type=item,nbt={Age:0s}] run data modify storage blue:enchanting TelekinesisDrops append from entity @s Item
kill @e[type=item,nbt={Age:0s}]
#----------MOVE STORAGE TO SHULKER---------#
data modify storage blue:enchanting TelekinesisDrops[0].Slot set value 0b
data modify storage blue:enchanting TelekinesisDrops[1].Slot set value 1b
data modify storage blue:enchanting TelekinesisDrops[2].Slot set value 2b
data modify storage blue:enchanting TelekinesisDrops[3].Slot set value 3b
data modify storage blue:enchanting TelekinesisDrops[4].Slot set value 4b
setblock ~ 0 ~ shulker_box{Items:[]}
data modify block ~ 0 ~ Items set from storage blue:enchanting TelekinesisDrops
#--------------GIVE TO PLAYER--------------#
#using spawn instead of give so the drops count for collections
loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:diamond_pickaxe{drop_contents:true}
setblock ~ 0 ~ air
execute as @e[type=item,nbt={Age:0s}] run data merge entity @s {PickupDelay:0}
#------------------------------------------#