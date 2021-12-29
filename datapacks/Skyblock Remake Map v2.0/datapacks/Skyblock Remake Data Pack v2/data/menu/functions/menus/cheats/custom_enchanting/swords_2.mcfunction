#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 1 2 1

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run scoreboard players set @s CustomEnchPage 18
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run scoreboard players set @s CustomEnchPage 19
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run scoreboard players set @s CustomEnchPage 20
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run scoreboard players set @s CustomEnchPage 21
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run scoreboard players set @s CustomEnchPage 22
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run scoreboard players set @s CustomEnchPage 23
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run function cheats:custom_enchanting/open_page

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow", Count: 1b}]}] run scoreboard players set @s M_NewPage 118

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 18b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 119

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:iron_sword", Count: 1b, tag: {SkyblockMenu:1b, HideFlags:63, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Sharpness.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Sharpness Book","color":"green","italic":false}'}}}, {Slot: 1b, id: "minecraft:rotten_flesh", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Smite.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Smite Book","color":"green","italic":false}'}}}, {Slot: 2b, id: "minecraft:ender_eye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Telekinesis.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Telekinesis Book","color":"green","italic":false}'}}}, {Slot: 3b, id: "minecraft:gunpowder", Count: 1b, tag: {SkyblockMenu:1b,Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Thunderlord.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Thunderlord Book","color":"green","italic":false}'}}}, {Slot: 4b, id: "minecraft:ghast_tear", Count: 1b, tag: {SkyblockMenu:1b,Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Vampirism.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Vampirism Book","color":"green","italic":false}'}}}, {Slot: 5b, id: "minecraft:spider_eye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Venomous.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Venomous Book","color":"green","italic":false}'}}}, {Slot: 6b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Previous Page","color":"green","italic":false}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Get Item Categories","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
#------------------------------------------#