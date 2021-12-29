#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
tag @s add ItemSuccess

execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"COMMON"} run scoreboard players set $ReforgeCost Temp 250
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"UNCOMMON"} run scoreboard players set $ReforgeCost Temp 500
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"RARE"} run scoreboard players set $ReforgeCost Temp 1000
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"EPIC"} run scoreboard players set $ReforgeCost Temp 2500
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"LEGENDARY"} run scoreboard players set $ReforgeCost Temp 5000
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"MYTHIC"} run scoreboard players set $ReforgeCost Temp 10000
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"SUPREME"} run scoreboard players set $ReforgeCost Temp 15000
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"SPECIAL"} run scoreboard players set $ReforgeCost Temp 25000
execute if data storage blue:reforge Items[{Slot:13b}].tag.Base{Rarity:"VERY SPECIAL"} run scoreboard players set $ReforgeCost Temp 50000

loot replace entity @s container.21 1 loot reforges:menu/button/can_reforge
