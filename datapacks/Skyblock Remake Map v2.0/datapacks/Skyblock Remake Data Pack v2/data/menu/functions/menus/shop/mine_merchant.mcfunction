#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run scoreboard players set $NPCItemCost Temp 8
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:0b}] run give @p coal{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Coal","color":"white","italic":false}]',Lore:['{"text": "Brewing Ingredient","color": "dark_gray","italic": false}','{"text": "increases the speed of","color": "gray","italic": false}','[{"text": "your minion by ","color": "gray","italic": false},{"text": "5%","color": "green","italic": false}]','{"text": "for 30 minutes!","color": "gray","italic": false}','{"text": ""}','{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 2

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run scoreboard players set $NPCItemCost Temp 22
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:1b}] run give @p iron_ingot{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Iron Ingot","color":"white","italic":false}]',Lore:['{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 4

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run scoreboard players set $NPCItemCost Temp 12
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:2b}] run give @p gold_ingot{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Gold Ingot","color":"white","italic":false}]',Lore:['{"text": "Brewing Ingredient","color": "dark_gray","italic": false}','{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 2

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run scoreboard players set $NPCItemCost Temp 12
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:3b}] run loot give @p loot cheats:get_items/pickaxes/rookie_pickaxe

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run scoreboard players set $NPCItemCost Temp 35
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:4b}] run loot give @p loot cheats:get_items/pickaxes/promising_pickaxe

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run scoreboard players set $NPCItemCost Temp -1
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run function menu:npc_menu/can_afford_test

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run scoreboard players set $NPCItemCost Temp 16
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:6b}] run give @p torch{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Torch","color":"white","italic":false}]',Lore:['{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 32

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run scoreboard players set $NPCItemCost Temp 12
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:7b}] run give @p gravel{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Gravel","color":"white","italic":false}]',Lore:['{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 2

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run scoreboard players set $NPCItemCost Temp 3
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:8b}] run give @p cobblestone{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Cobblestone","color":"white","italic":false}]',Lore:['{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 1

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run scoreboard players set $NPCItemCost Temp 4
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run function menu:npc_menu/can_afford_test
execute if entity @s[scores={M_PageDelay=0},tag=NPCPurchaseSuccess] unless data entity @s Items[{Slot:9b}] run give @p stone{Base:{Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Vanilla:1b},display:{Name:'[{"text":"Stone","color":"white","italic":false}]',Lore:['{"text": "COMMON","color": "white","italic": false,"bold": true}']}} 2

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}].tag.SkyblockMenu run function menu:return_item/0
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}].tag.SkyblockMenu run function menu:return_item/1
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}].tag.SkyblockMenu run function menu:return_item/2
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}].tag.SkyblockMenu run function menu:return_item/3
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}].tag.SkyblockMenu run function menu:return_item/4
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}].tag.SkyblockMenu run function menu:return_item/5
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}].tag.SkyblockMenu run function menu:return_item/6
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}].tag.SkyblockMenu run function menu:return_item/7
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/8
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}].tag.SkyblockMenu run function menu:return_item/9
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b}].tag.SkyblockMenu run function menu:return_item/10
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:11b}].tag.SkyblockMenu run function menu:return_item/11
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:12b}].tag.SkyblockMenu run function menu:return_item/12
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:13b}].tag.SkyblockMenu run function menu:return_item/13
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:14b}].tag.SkyblockMenu run function menu:return_item/14
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:15b}].tag.SkyblockMenu run function menu:return_item/15
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:16b}].tag.SkyblockMenu run function menu:return_item/16
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:17b}].tag.SkyblockMenu run function menu:return_item/17
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:18b}].tag.SkyblockMenu run function menu:return_item/18
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:19b}].tag.SkyblockMenu run function menu:return_item/19
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:20b}].tag.SkyblockMenu run function menu:return_item/20
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:21b}].tag.SkyblockMenu run function menu:return_item/21
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:22b}].tag.SkyblockMenu run function menu:return_item/22
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:23b}].tag.SkyblockMenu run function menu:return_item/23
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:24b}].tag.SkyblockMenu run function menu:return_item/24
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:25b}].tag.SkyblockMenu run function menu:return_item/25
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:26b}].tag.SkyblockMenu run function menu:return_item/26

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:hopper", Count: 1b, tag: {SkyblockMenu:1b}}]}] run tellraw @p {"text":"COMING SOON","color":"red","bold":true}

tag @s remove NPCPurchaseSuccess
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:hopper", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['{"text":"Click items in your inventory to","color":"gray","italic":false}','{"text":"sell them to this Shop!","color":"gray","italic":false}','{"text":"COMING SOON!","color":"red","italic":false,"bold":true}'],Name: '{"text":"Sell Item","color":"green","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
loot replace entity @s container.0 loot cheats:menu/shop/mine_merchant
#------------------------------------------#