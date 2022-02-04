#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:green_terracotta"}]}] run function menu:menus/maddox/start_quest_checks
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, id: "minecraft:red_terracotta"}]}] run function menu:close_menu


#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 0b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot:23b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:scute", Count: 1b, tag: {SkyblockMenu:1b, CustomModelData:1,  display: {Name: '{" "}'}}}]}

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 loot slayers:menu/confirm
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.15 loot slayers:menu/cancel
#------------------------------------------#