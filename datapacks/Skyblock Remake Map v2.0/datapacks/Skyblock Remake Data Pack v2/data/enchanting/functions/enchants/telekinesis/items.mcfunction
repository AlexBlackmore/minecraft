#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------MOVE ITEM TO STORAGE-----------#
execute as @e[type=item,tag=!Treecapitator] store result score @s Temp run data get entity @s Age
data merge storage blue:enchanting {TelekinesisDrops:[]}
execute as @e[type=item,scores={Temp=0..10},tag=!Treecapitator] run data modify storage blue:enchanting TelekinesisDrops append from entity @s Item
kill @e[type=item,scores={Temp=0..10},tag=!Treecapitator]
#----------MOVE STORAGE TO SHULKER---------#
data modify storage blue:enchanting TelekinesisDrops[0].Slot set value 0b
data modify storage blue:enchanting TelekinesisDrops[1].Slot set value 1b
data modify storage blue:enchanting TelekinesisDrops[2].Slot set value 2b
data modify storage blue:enchanting TelekinesisDrops[3].Slot set value 3b
data modify storage blue:enchanting TelekinesisDrops[4].Slot set value 4b
data modify storage blue:enchanting TelekinesisDrops[5].Slot set value 5b
data modify storage blue:enchanting TelekinesisDrops[6].Slot set value 6b
data modify storage blue:enchanting TelekinesisDrops[7].Slot set value 7b
data modify storage blue:enchanting TelekinesisDrops[8].Slot set value 8b
data modify storage blue:enchanting TelekinesisDrops[9].Slot set value 9b
data modify storage blue:enchanting TelekinesisDrops[10].Slot set value 10b
data modify storage blue:enchanting TelekinesisDrops[11].Slot set value 11b
data modify storage blue:enchanting TelekinesisDrops[12].Slot set value 12b
data modify storage blue:enchanting TelekinesisDrops[13].Slot set value 13b
data modify storage blue:enchanting TelekinesisDrops[14].Slot set value 14b
data modify storage blue:enchanting TelekinesisDrops[15].Slot set value 15b

setblock ~ 0 ~ shulker_box{Items:[]}
data modify block ~ 0 ~ Items set from storage blue:enchanting TelekinesisDrops
#--------------GIVE TO PLAYER--------------#
#using spawn instead of give so the drops count for collections
loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:diamond_pickaxe{drop_contents:true}
setblock ~ 0 ~ air
execute as @e[type=item,scores={Temp=0..10},tag=!Treecapitator] run data merge entity @s {PickupDelay:0}
# Reset mine scores in the same tick to avoid telekinesis not working when breaking blocks too fast
function enchanting:reset_mine_scores
#------------------------------------------#