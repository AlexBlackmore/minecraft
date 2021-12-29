#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
data modify storage blue:item AccessoryItems set from entity @s Items

execute store result score @p PlayerPosX run data get entity @p Pos[0] 10
execute store result score @p PlayerPosY run data get entity @p Pos[1] 10
execute store result score @p PlayerPosZ run data get entity @p Pos[2] 10
execute as @p store result score @s NewRot run data get entity @s Rotation[0] 1000000
execute unless score @p OldRot = @p NewRot unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run scoreboard players set @s M_NewPage -1
execute unless score @p OldRot = @p NewRot unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run function menu:save_accessory_bag
execute unless score @p PlayerPosXOld = @p PlayerPosX unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run scoreboard players set @s M_NewPage -1
execute unless score @p PlayerPosXOld = @p PlayerPosX unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run function menu:save_accessory_bag
execute unless score @p PlayerPosYOld = @p PlayerPosY unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run scoreboard players set @s M_NewPage -1
execute unless score @p PlayerPosYOld = @p PlayerPosY unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run function menu:save_accessory_bag
execute unless score @p PlayerPosZOld = @p PlayerPosZ unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run scoreboard players set @s M_NewPage -1
execute unless score @p PlayerPosZOld = @p PlayerPosZ unless score @s M_NewPage matches -1 if score @s M_PageDelay matches 0 run function menu:save_accessory_bag
execute as @p[distance=..6] store result score @s OldRot run data get entity @s Rotation[0] 1000000
execute as @p[distance=..6] store result score @s PlayerPosXOld run data get entity @s Pos[0] 10
execute as @p[distance=..6] store result score @s PlayerPosYOld run data get entity @s Pos[1] 10
execute as @p[distance=..6] store result score @s PlayerPosZOld run data get entity @s Pos[2] 10

execute if score @p AccessoryBagLvl matches 1.. unless data storage blue:item {AccessoryItems:[{Slot:0b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/0
execute if score @p AccessoryBagLvl matches 2.. unless data storage blue:item {AccessoryItems:[{Slot:1b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/1
execute if score @p AccessoryBagLvl matches 3.. unless data storage blue:item {AccessoryItems:[{Slot:2b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/2
execute if score @p AccessoryBagLvl matches 4.. unless data storage blue:item {AccessoryItems:[{Slot:3b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/3
execute if score @p AccessoryBagLvl matches 5.. unless data storage blue:item {AccessoryItems:[{Slot:4b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/4
execute if score @p AccessoryBagLvl matches 6.. unless data storage blue:item {AccessoryItems:[{Slot:5b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/5
execute if score @p AccessoryBagLvl matches 7.. unless data storage blue:item {AccessoryItems:[{Slot:6b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/6
execute if score @p AccessoryBagLvl matches 8.. unless data storage blue:item {AccessoryItems:[{Slot:7b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/7
execute if score @p AccessoryBagLvl matches 9.. unless data storage blue:item {AccessoryItems:[{Slot:8b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/8
execute if score @p AccessoryBagLvl matches 10.. unless data storage blue:item {AccessoryItems:[{Slot:9b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/9
execute if score @p AccessoryBagLvl matches 11.. unless data storage blue:item {AccessoryItems:[{Slot:10b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/10
execute if score @p AccessoryBagLvl matches 12.. unless data storage blue:item {AccessoryItems:[{Slot:11b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/11
execute if score @p AccessoryBagLvl matches 13.. unless data storage blue:item {AccessoryItems:[{Slot:12b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/12
execute if score @p AccessoryBagLvl matches 14.. unless data storage blue:item {AccessoryItems:[{Slot:13b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/13
execute if score @p AccessoryBagLvl matches 15.. unless data storage blue:item {AccessoryItems:[{Slot:14b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/14
execute if score @p AccessoryBagLvl matches 16.. unless data storage blue:item {AccessoryItems:[{Slot:15b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/15
execute if score @p AccessoryBagLvl matches 17.. unless data storage blue:item {AccessoryItems:[{Slot:16b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/16
execute if score @p AccessoryBagLvl matches 18.. unless data storage blue:item {AccessoryItems:[{Slot:17b,tag:{Base:{Type:"ACCESSORY"}}}]} run function menu:return_item/17

execute unless score @p AccessoryBagLvl matches 1.. unless data storage blue:item AccessoryItems[{Slot:0b}].tag.SkyblockMenu run function menu:return_item/0
execute unless score @p AccessoryBagLvl matches 2.. unless data storage blue:item AccessoryItems[{Slot:1b}].tag.SkyblockMenu run function menu:return_item/1
execute unless score @p AccessoryBagLvl matches 3.. unless data storage blue:item AccessoryItems[{Slot:2b}].tag.SkyblockMenu run function menu:return_item/2
execute unless score @p AccessoryBagLvl matches 4.. unless data storage blue:item AccessoryItems[{Slot:3b}].tag.SkyblockMenu run function menu:return_item/3
execute unless score @p AccessoryBagLvl matches 5.. unless data storage blue:item AccessoryItems[{Slot:4b}].tag.SkyblockMenu run function menu:return_item/4
execute unless score @p AccessoryBagLvl matches 6.. unless data storage blue:item AccessoryItems[{Slot:5b}].tag.SkyblockMenu run function menu:return_item/5
execute unless score @p AccessoryBagLvl matches 7.. unless data storage blue:item AccessoryItems[{Slot:6b}].tag.SkyblockMenu run function menu:return_item/6
execute unless score @p AccessoryBagLvl matches 8.. unless data storage blue:item AccessoryItems[{Slot:7b}].tag.SkyblockMenu run function menu:return_item/7
execute unless score @p AccessoryBagLvl matches 9.. unless data storage blue:item AccessoryItems[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/8
execute unless score @p AccessoryBagLvl matches 10.. unless data storage blue:item AccessoryItems[{Slot:9b}].tag.SkyblockMenu run function menu:return_item/9
execute unless score @p AccessoryBagLvl matches 11.. unless data storage blue:item AccessoryItems[{Slot:10b}].tag.SkyblockMenu run function menu:return_item/10
execute unless score @p AccessoryBagLvl matches 12.. unless data storage blue:item AccessoryItems[{Slot:11b}].tag.SkyblockMenu run function menu:return_item/11
execute unless score @p AccessoryBagLvl matches 13.. unless data storage blue:item AccessoryItems[{Slot:12b}].tag.SkyblockMenu run function menu:return_item/12
execute unless score @p AccessoryBagLvl matches 14.. unless data storage blue:item AccessoryItems[{Slot:13b}].tag.SkyblockMenu run function menu:return_item/13
execute unless score @p AccessoryBagLvl matches 15.. unless data storage blue:item AccessoryItems[{Slot:14b}].tag.SkyblockMenu run function menu:return_item/14
execute unless score @p AccessoryBagLvl matches 16.. unless data storage blue:item AccessoryItems[{Slot:15b}].tag.SkyblockMenu run function menu:return_item/15
execute unless score @p AccessoryBagLvl matches 17.. unless data storage blue:item AccessoryItems[{Slot:16b}].tag.SkyblockMenu run function menu:return_item/16
execute unless score @p AccessoryBagLvl matches 18.. unless data storage blue:item AccessoryItems[{Slot:17b}].tag.SkyblockMenu run function menu:return_item/17

execute unless data storage blue:item AccessoryItems[{Slot:18b}].tag.SkyblockMenu run function menu:return_item/18
execute unless data storage blue:item AccessoryItems[{Slot:19b}].tag.SkyblockMenu run function menu:return_item/19
execute unless data storage blue:item AccessoryItems[{Slot:20b}].tag.SkyblockMenu run function menu:return_item/20
execute unless data storage blue:item AccessoryItems[{Slot:21b}].tag.SkyblockMenu run function menu:return_item/21
execute unless data storage blue:item AccessoryItems[{Slot:22b}].tag.SkyblockMenu run function menu:return_item/22
execute unless data storage blue:item AccessoryItems[{Slot:23b}].tag.SkyblockMenu run function menu:return_item/23
execute unless data storage blue:item AccessoryItems[{Slot:24b}].tag.SkyblockMenu run function menu:return_item/24
execute unless data storage blue:item AccessoryItems[{Slot:25b}].tag.SkyblockMenu run function menu:return_item/25
execute unless data storage blue:item AccessoryItems[{Slot:26b}].tag.SkyblockMenu run function menu:return_item/26

execute unless score @s M_NewPage matches -1 if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow"}]}] run function menu:save_accessory_bag
execute unless score @s M_NewPage matches -1 if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage -1

execute unless score @s M_NewPage matches -1 if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier"}]}] run function menu:save_accessory_bag
execute unless score @s M_NewPage matches -1 if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier"}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
execute if entity @s[tag=AccessoryInit] run function menu:open_accessory_bag
execute if score @p AccessoryBagLvl matches ..1 run item replace entity @s container.1 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..2 run item replace entity @s container.2 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..3 run item replace entity @s container.3 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..4 run item replace entity @s container.4 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..5 run item replace entity @s container.5 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..6 run item replace entity @s container.6 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..7 run item replace entity @s container.7 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..8 run item replace entity @s container.8 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..9 run item replace entity @s container.9 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..10 run item replace entity @s container.10 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..11 run item replace entity @s container.11 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..12 run item replace entity @s container.12 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..13 run item replace entity @s container.13 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..14 run item replace entity @s container.14 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..15 run item replace entity @s container.15 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..16 run item replace entity @s container.16 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
execute if score @p AccessoryBagLvl matches ..17 run item replace entity @s container.17 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.18 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.19 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.20 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.21 with minecraft:arrow{SkyblockMenu:1b, display: {Name: '{"text":"Go Back","color":"green","italic":false}'}}
item replace entity @s container.22 with minecraft:barrier{SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}
item replace entity @s container.23 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.24 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.25 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
item replace entity @s container.26 with minecraft:black_stained_glass_pane{SkyblockMenu:1b, display: {Name: '{"text":" "}'}}
#------------------------------------------#