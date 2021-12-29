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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:gray_dye"}]}] at @a[scores={C_RottenfleshS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:gray_dye"}]}] at @a[scores={C_BoneS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:gray_dye"}]}] at @a[scores={C_StringS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:gray_dye"}]}] at @a[scores={C_SpidereyeS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, id: "minecraft:gray_dye"}]}] at @a[scores={C_GunpowderS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, id: "minecraft:gray_dye"}]}] at @a[scores={C_EnderpearlS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 16b, id: "minecraft:gray_dye"}]}] at @a[scores={C_GhasttearS=0},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function menu:no_collection

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:rotten_flesh"}]}] at @a[scores={C_RottenfleshS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/rotten_flesh
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:bone"}]}] at @a[scores={C_BoneS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/bone
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:string"}]}] at @a[scores={C_StringS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/string
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:spider_eye"}]}] at @a[scores={C_SpidereyeS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/spider_eye
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, id: "minecraft:gunpowder"}]}] at @a[scores={C_GunpowderS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/gunpowder
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, id: "minecraft:ender_pearl"}]}] at @a[scores={C_EnderpearlS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/ender_pearl
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 16b, id: "minecraft:ghast_tear"}]}] at @a[scores={C_GhasttearS=1..},nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @p PlayerID run function collections:menu_scores/combat/ghast_tear

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 17b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 10

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 0

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier"}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Go Down","color":"green","italic":false}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['{"text":"To Collection","color":"gray","italic":false}'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
execute at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot collections:menu/header/combat
execute at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 loot collections:menu/button/combat/page_1
#------------------------------------------#