#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute as @p run function skyblock:multiplayer_storage/get
scoreboard players reset $PetCollect Temp
execute unless data entity @s Items[{Slot:0b}] run scoreboard players set $PetCollect Temp 0
execute unless data entity @s Items[{Slot:1b}] run scoreboard players set $PetCollect Temp 1
execute unless data entity @s Items[{Slot:2b}] run scoreboard players set $PetCollect Temp 2
execute unless data entity @s Items[{Slot:3b}] run scoreboard players set $PetCollect Temp 3
execute unless data entity @s Items[{Slot:4b}] run scoreboard players set $PetCollect Temp 4
execute unless data entity @s Items[{Slot:5b}] run scoreboard players set $PetCollect Temp 5
execute unless data entity @s Items[{Slot:6b}] run scoreboard players set $PetCollect Temp 6
execute unless data entity @s Items[{Slot:7b}] run scoreboard players set $PetCollect Temp 7
execute unless data entity @s Items[{Slot:8b}] run scoreboard players set $PetCollect Temp 8
execute unless data entity @s Items[{Slot:9b}] run scoreboard players set $PetCollect Temp 9
execute unless data entity @s Items[{Slot:10b}] run scoreboard players set $PetCollect Temp 10
execute unless data entity @s Items[{Slot:11b}] run scoreboard players set $PetCollect Temp 11
execute unless data entity @s Items[{Slot:12b}] run scoreboard players set $PetCollect Temp 12
execute unless data entity @s Items[{Slot:13b}] run scoreboard players set $PetCollect Temp 13
execute unless data entity @s Items[{Slot:14b}] run scoreboard players set $PetCollect Temp 14
execute unless data entity @s Items[{Slot:15b}] run scoreboard players set $PetCollect Temp 15
execute unless data entity @s Items[{Slot:16b}] run scoreboard players set $PetCollect Temp 16
execute unless data entity @s Items[{Slot:17b}] run scoreboard players set $PetCollect Temp 17
execute if score $PetCollect Temp matches 0.. run function pets:menu/collect_pet/success
function skyblock:multiplayer_storage/save
#------------------------------------------#