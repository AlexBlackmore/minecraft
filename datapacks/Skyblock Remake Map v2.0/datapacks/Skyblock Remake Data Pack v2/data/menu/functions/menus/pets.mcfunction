#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
execute as @p run function menu:open_pets_menu

execute if entity @s[tag=!ConvertPetItem] run function pets:menu/summon_pet/test
execute if entity @s[tag=ConvertPetItem] run function pets:menu/collect_pet/test

execute as @p run function menu:open_pets_menu

execute unless data entity @s Items[{Slot:0b}].tag.SkyblockMenu run function menu:return_item/0
execute unless data entity @s Items[{Slot:1b}].tag.SkyblockMenu run function menu:return_item/1
execute unless data entity @s Items[{Slot:2b}].tag.SkyblockMenu run function menu:return_item/2
execute unless data entity @s Items[{Slot:3b}].tag.SkyblockMenu run function menu:return_item/3
execute unless data entity @s Items[{Slot:4b}].tag.SkyblockMenu run function menu:return_item/4
execute unless data entity @s Items[{Slot:5b}].tag.SkyblockMenu run function menu:return_item/5
execute unless data entity @s Items[{Slot:6b}].tag.SkyblockMenu run function menu:return_item/6
execute unless data entity @s Items[{Slot:7b}].tag.SkyblockMenu run function menu:return_item/7
execute unless data entity @s Items[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/8
execute unless data entity @s Items[{Slot:9b}].tag.SkyblockMenu run function menu:return_item/9
execute unless data entity @s Items[{Slot:10b}].tag.SkyblockMenu run function menu:return_item/10
execute unless data entity @s Items[{Slot:11b}].tag.SkyblockMenu run function menu:return_item/11
execute unless data entity @s Items[{Slot:12b}].tag.SkyblockMenu run function menu:return_item/12
execute unless data entity @s Items[{Slot:13b}].tag.SkyblockMenu run function menu:return_item/13
execute unless data entity @s Items[{Slot:14b}].tag.SkyblockMenu run function menu:return_item/14
execute unless data entity @s Items[{Slot:15b}].tag.SkyblockMenu run function menu:return_item/15
execute unless data entity @s Items[{Slot:16b}].tag.SkyblockMenu run function menu:return_item/16
execute unless data entity @s Items[{Slot:17b}].tag.SkyblockMenu run function menu:return_item/17
execute unless data entity @s Items[{Slot:18b}].tag.SkyblockMenu run function menu:return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.SkyblockMenu run function menu:return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.SkyblockMenu run function menu:return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.SkyblockMenu run function menu:return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.SkyblockMenu run function menu:return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.SkyblockMenu run function menu:return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.SkyblockMenu run function menu:return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.SkyblockMenu run function menu:return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.SkyblockMenu run function menu:return_item/26

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow", Count: 1b}]}] run scoreboard players set @s M_NewPage -1

execute if entity @s[tag=!ConvertPetItem,scores={M_PageDelay=0},nbt=!{Items:[{Slot: 23b, tag:{SkyblockMenu:1b}}]}] run tag @s add ConvertPetItem2
execute if entity @s[tag=ConvertPetItem,scores={M_PageDelay=0},nbt=!{Items:[{Slot: 23b, tag:{SkyblockMenu:1b}}]}] run tag @s remove ConvertPetItem
tag @s[tag=ConvertPetItem2] add ConvertPetItem
tag @s remove ConvertPetItem2

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 1b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 2b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 3b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 4b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 5b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 6b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To SkyBlock Menu","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:gray_dye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['{"text":"Enable this setting and","color":"gray","italic":false}','{"text":"click any pet to convert it","color":"gray","italic":false}','{"text":"to an item.","color":"gray","italic":false}','{"text":""}','{"text":"Disabled","color":"red","italic":false}'],Name: '{"text":"Convert Pet to an Item","color":"green","italic":false}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}]}
execute if entity @s[tag=ConvertPetItem] run loot replace entity @s container.23 loot pets:menu/convert_to_item_enabled

execute as @p if entity @s[tag=PetSpawned] run function pets:menu/edit_lore/check

data modify storage blue:item PetMenu[0].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[0].Slot set value 0b
data modify entity @s Items[0] set from storage blue:item PetMenu[0]

data modify storage blue:item PetMenu[1].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[1].Slot set value 1b
data modify entity @s Items[1] set from storage blue:item PetMenu[1]

data modify storage blue:item PetMenu[2].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[2].Slot set value 2b
data modify entity @s Items[2] set from storage blue:item PetMenu[2]

data modify storage blue:item PetMenu[3].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[3].Slot set value 3b
data modify entity @s Items[3] set from storage blue:item PetMenu[3]

data modify storage blue:item PetMenu[4].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[4].Slot set value 4b
data modify entity @s Items[4] set from storage blue:item PetMenu[4]

data modify storage blue:item PetMenu[5].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[5].Slot set value 5b
data modify entity @s Items[5] set from storage blue:item PetMenu[5]

data modify storage blue:item PetMenu[6].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[6].Slot set value 6b
data modify entity @s Items[6] set from storage blue:item PetMenu[6]

data modify storage blue:item PetMenu[7].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[7].Slot set value 7b
data modify entity @s Items[7] set from storage blue:item PetMenu[7]

data modify storage blue:item PetMenu[8].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[8].Slot set value 8b
data modify entity @s Items[8] set from storage blue:item PetMenu[8]

data modify storage blue:item PetMenu[9].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[9].Slot set value 9b
data modify entity @s Items[9] set from storage blue:item PetMenu[9]

data modify storage blue:item PetMenu[10].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[10].Slot set value 10b
data modify entity @s Items[10] set from storage blue:item PetMenu[10]

data modify storage blue:item PetMenu[11].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[11].Slot set value 11b
data modify entity @s Items[11] set from storage blue:item PetMenu[11]

data modify storage blue:item PetMenu[12].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[12].Slot set value 12b
data modify entity @s Items[12] set from storage blue:item PetMenu[12]

data modify storage blue:item PetMenu[13].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[13].Slot set value 13b
data modify entity @s Items[13] set from storage blue:item PetMenu[13]

data modify storage blue:item PetMenu[14].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[14].Slot set value 14b
data modify entity @s Items[14] set from storage blue:item PetMenu[14]

data modify storage blue:item PetMenu[15].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[15].Slot set value 15b
data modify entity @s Items[15] set from storage blue:item PetMenu[15]

data modify storage blue:item PetMenu[16].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[16].Slot set value 16b
data modify entity @s Items[16] set from storage blue:item PetMenu[16]

data modify storage blue:item PetMenu[17].tag.SkyblockMenu set value 1b
data modify storage blue:item PetMenu[17].Slot set value 17b
data modify entity @s Items[17] set from storage blue:item PetMenu[17]

data modify storage blue:pets Items set from entity @s Items
#------------------------------------------#