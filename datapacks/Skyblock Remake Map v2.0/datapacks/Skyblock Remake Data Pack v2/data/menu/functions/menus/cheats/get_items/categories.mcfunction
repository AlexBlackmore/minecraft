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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow", Count: 1b}]}] run scoreboard players set @s M_NewPage 89

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 9b, id: "minecraft:diamond_sword", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 93
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:bow", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 94
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:armor_stand", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 95
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:diamond_pickaxe", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 96
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:player_head", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 97
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, id: "minecraft:player_head", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 98
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, id: "minecraft:spawner", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 100
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 16b, id: "minecraft:tnt", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 101
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 17b, id: "minecraft:player_head", Count: 1b, tag: {SkyblockMenu:1b}}]}] run scoreboard players set @s M_NewPage 99

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:diamond_sword", Count: 1b, tag: {HideFlags:63,SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in a Sword from","color":"gray","italic":false}]','[{"text":"Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Swords","color":"green","italic":false}'}}}, {Slot: 10b, id: "minecraft:bow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in a Bow from","color":"gray","italic":false}]','[{"text":"Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Bows","color":"green","italic":false}'}}}, {Slot: 11b, id: "minecraft:armor_stand", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in an Armor Set","color":"gray","italic":false}]','[{"text":"from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Armor Sets","color":"green","italic":false}'}}}, {Slot: 12b, id: "minecraft:diamond_pickaxe", Count: 1b, tag: {HideFlags:63,SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in a Fishing Rod,","color":"gray","italic":false}]','[{"text":"Pickaxe, Axe, Shovel or","color":"gray","italic":false}]','[{"text":"Hoe from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Tools","color":"green","italic":false}'}}}, {Slot: 13b, id: "minecraft:player_head", Count: 1b, tag: {SkyblockMenu:1b, SkullOwner:{Id:[I;-1896433491,-1924775600,-1838403799,907924510],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmM0MjYzODc0NDkyMmI1ZmNmNjJjZDliZjI3ZWVhYjkxYjJlNzJkNmM3MGU4NmNjNWFhMzg4Mzk5M2U5ZDg0In19fQ=="}]}}, display: {Lore: ['[{"text":"Cheat in a Pet from","color":"gray","italic":false}]','[{"text":"Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Pets","color":"green","italic":false}'}}}, {Slot: 14b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner:{Id: [I; -1006642740, -620343574, -1425451238, -1522188142], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTYxYTkxOGMwYzQ5YmE4ZDA1M2U1MjJjYjkxYWJjNzQ2ODkzNjdiNGQ4YWEwNmJmYzFiYTkxNTQ3MzA5ODVmZiJ9fX0="}]}},SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in an Accessory","color":"gray","italic":false}]','[{"text":"from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Accessories","color":"green","italic":false}'}}}, {Slot: 15b, id: "minecraft:spawner", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in Mob Spawn","color":"gray","italic":false}]','[{"text":"Eggs from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Spawn Eggs","color":"green","italic":false}'}}}, {Slot: 16b, id: "minecraft:tnt", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in Admin Items","color":"gray","italic":false}]','[{"text":"from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Admin Items","color":"green","italic":false}'}}}, {Slot: 17b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner:{Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU2MTU5NWQ5Yzc0NTc3OTZjNzE5ZmFlNDYzYTIyMjcxY2JjMDFjZjEwODA5ZjVhNjRjY2IzZDZhZTdmOGY2In19fQ="}]}, Id: [I; -1441800181, 413417773, -1915715209, 719446303]},SkyblockMenu:1b, display: {Lore: ['[{"text":"Cheat in Miscellaneous","color":"gray","italic":false}]','[{"text":"Items from Skyblock!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to view!","color":"yellow","italic":false}]'], Name: '{"text":"Other","color":"green","italic":false}'}}}, {Slot: 18b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Cheats Menu","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
#------------------------------------------#