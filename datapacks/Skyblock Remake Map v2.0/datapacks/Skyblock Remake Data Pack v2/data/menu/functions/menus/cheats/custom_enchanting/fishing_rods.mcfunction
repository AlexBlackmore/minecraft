#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 1 2 1

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run scoreboard players set @s CustomEnchPage 51
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run scoreboard players set @s CustomEnchPage 52
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run scoreboard players set @s CustomEnchPage 53
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run scoreboard players set @s CustomEnchPage 54
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run scoreboard players set @s CustomEnchPage 15
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run scoreboard players set @s CustomEnchPage 55
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run scoreboard players set @s CustomEnchPage 56
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run scoreboard players set @s CustomEnchPage 57
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run scoreboard players set @s CustomEnchPage 58
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run scoreboard players set @s CustomEnchPage 20
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run function cheats:custom_enchanting/open_page

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:ink_sac", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Angler.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Angler Book","color":"green","italic":false}'}}}, {Slot: 1b, id: "minecraft:pufferfish", Count: 1b, tag: {SkyblockMenu:1b, Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Blessing.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Blessing Book","color":"green","italic":false}'}}}, {Slot: 2b, id: "minecraft:player_head", Count: 1b, tag: {SkyblockMenu:1b,SkullOwner:{Id:[I;1815474244,1979925608,-1409123597,1899568986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzNhYTcxNjc2ZTgxZmI1M2EwNDBkZmRjYTNlNWI0N2Q1M2U2ZWZkNjY1ZTY5ZmI0Mzk3NzhlOGM0ZWZiMWNjIn19fQ=="}]}}, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Caster.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Caster Book","color":"green","italic":false}'}}}, {Slot: 3b, id: "minecraft:lily_pad", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Frail.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Frail Book","color":"green","italic":false}'}}}, {Slot: 4b, id: "minecraft:gold_block", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Looting.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Looting Book","color":"green","italic":false}'}}}, {Slot: 5b, id: "minecraft:rabbit_foot", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Luck of the Sea.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Luck of the Sea Book","color":"green","italic":false}'}}}, {Slot: 6b, id: "minecraft:cod", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Lure.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Lure Book","color":"green","italic":false}'}}}, {Slot: 7b, id: "minecraft:quartz", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Magnet.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Magnet Book","color":"green","italic":false}'}}}, {Slot: 8b, id: "minecraft:pufferfish", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Spiked Hook.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Spiked Hook Book","color":"green","italic":false}'}}}, {Slot: 9b, id: "minecraft:ender_eye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Telekinesis.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Telekinesis Book","color":"green","italic":false}'}}}, {Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Get Item Categories","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
#------------------------------------------#