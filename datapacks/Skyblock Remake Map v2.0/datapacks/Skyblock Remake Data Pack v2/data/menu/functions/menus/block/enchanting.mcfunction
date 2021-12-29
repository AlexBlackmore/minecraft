#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
data modify storage blue:enchanting Items set from entity @s Items
execute unless data storage blue:enchanting Items[{Slot:0b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/0
execute unless data storage blue:enchanting Items[{Slot:1b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/1
execute unless data storage blue:enchanting Items[{Slot:2b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/2
execute unless data storage blue:enchanting Items[{Slot:3b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/3
execute unless data storage blue:enchanting Items[{Slot:4b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/4
execute unless data storage blue:enchanting Items[{Slot:5b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/5
execute unless data storage blue:enchanting Items[{Slot:6b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/6
execute unless data storage blue:enchanting Items[{Slot:7b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/7
execute unless data storage blue:enchanting Items[{Slot:8b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/8
execute unless data storage blue:enchanting Items[{Slot:9b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/9
execute unless data storage blue:enchanting Items[{Slot:10b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/10
execute unless data storage blue:enchanting Items[{Slot:11b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/11
execute unless data storage blue:enchanting Items[{Slot:12b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/12
execute unless data storage blue:enchanting Items[{Slot:14b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/14
execute unless data storage blue:enchanting Items[{Slot:15b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/15
execute unless data storage blue:enchanting Items[{Slot:16b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/16
execute unless data storage blue:enchanting Items[{Slot:17b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/17
execute unless data storage blue:enchanting Items[{Slot:18b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/18
execute unless data storage blue:enchanting Items[{Slot:19b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/19
execute unless data storage blue:enchanting Items[{Slot:21b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/21
execute unless data storage blue:enchanting Items[{Slot:23b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/23
execute unless data storage blue:enchanting Items[{Slot:25b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/25
execute unless data storage blue:enchanting Items[{Slot:26b}].tag.SkyblockMenu run function enchanting:enchanting_table/return_item/26
#---------------INIT MENU------------------#
data merge entity @s[scores={M_PageDelay=1}] {Items:[{Slot: 0b, id: "minecraft:yellow_stained_glass_pane",Count:1b,tag:{FirstEnchant:[],EnchantData:[],SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{FirstEnchant:[],EnchantData:[],SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 2b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 3b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 4b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 5b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 6b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:yellow_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 12b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 14b, id: "minecraft:red_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 16b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:yellow_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 20b, id: "minecraft:gray_dye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Place an item in the open slot","color":"gray","italic":false}','{"text":"to enchant it!","color":"gray","italic":false}'],Name: '{"text":"Enchant Item","color":"red","italic":false}'}}},{Slot: 21b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 22b, id: "minecraft:gray_dye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Place an item in the open slot","color":"gray","italic":false}','{"text":"to enchant it!","color":"gray","italic":false}'],Name: '{"text":"Enchant Item","color":"red","italic":false}'}}},{Slot: 23b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}},{Slot: 24b, id: "minecraft:gray_dye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Place an item in the open slot","color":"gray","italic":false}','{"text":"to enchant it!","color":"gray","italic":false}'],Name: '{"text":"Enchant Item","color":"red","italic":false}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 26b, id: "minecraft:yellow_stained_glass_pane",Count:1b,tag:{SkyblockMenu:1b, display: {Name: '{"text":""}'}}}]}
#------------------------------------------#