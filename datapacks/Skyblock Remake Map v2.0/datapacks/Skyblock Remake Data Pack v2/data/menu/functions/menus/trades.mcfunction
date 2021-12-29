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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:coal"}]}] as @p run function menu:trades/click/coal
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:grass_block"}]}] as @p run function menu:trades/click/grass_block
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:dirt"}]}] if entity @p[scores={C_SeedsL=1..}] as @p run function menu:trades/click/dirt
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, id: "minecraft:clay_ball"}]}] if entity @p[scores={C_SeedsL=2..}] as @p run function menu:trades/click/clay
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, id: "minecraft:oak_leaves"}]}] if entity @p[scores={C_OakL=2..}] as @p run function menu:trades/click/oak_leaves
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 16b, id: "minecraft:spruce_leaves"}]}] if entity @p[scores={C_SpruceL=2..}] as @p run function menu:trades/click/spruce_leaves

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 17b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 13

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage -1

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier"}]}] run function menu:close_menu

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_SeedsL=..0}] unless data entity @s Items[{Slot:13b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_SeedsL=..1}] unless data entity @s Items[{Slot:14b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_OakL=..1}] unless data entity @s Items[{Slot:15b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_SpruceL=..1}] unless data entity @s Items[{Slot:16b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked

execute as @p if entity @s[scores={TradeHadItems=0}] run function menu:trades/fail_noitems
scoreboard players reset @p TradeHadItems
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:gray_dye", Count: 1b, tag: {SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"Progress through your item","color":"gray","italic":false}', '{"text":"collections and explore the","color":"gray","italic":false}', '{"text":"world to unlock new trades!","color":"gray","italic":false}'], Name: '{"text":"???","color":"red","italic":false}'}}}, {Slot: 11b, id: "minecraft:coal", Count: 2b, tag: {SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"","color":"gray","italic":false}', '{"text":"Cost:","color":"gray","italic":false}', '{"text":"Oak Wood","color":"white","italic":false}', '{"text":"","color":"gray","italic":false}', '{"text":"Click to trade!","color":"yellow","italic":false}'], Name: '[{"text":"Coal","color":"white","italic":false},{"text":" x2","color":"gray","italic":false}]'}}}, {Slot: 12b, id: "minecraft:grass_block", Count: 4b, tag: {SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"","color":"gray","italic":false}', '{"text":"Cost:","color":"gray","italic":false}', '[{"text":"Dirt","color":"white","italic":false},{"text":" x4","color":"gray","italic":false}]', '{"text":"","color":"gray","italic":false}', '{"text":"Click to trade!","color":"yellow","italic":false}'], Name: '[{"text":"Grass","color":"white","italic":false},{"text":" x4","color":"gray","italic":false}]'}}}, {Slot: 17b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Go Down","color":"green","italic":false}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['{"text":"To SkyBlock Menu","color":"gray","italic":false}'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}

execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 loot menu:menu/trades/dirt
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.14 loot menu:menu/trades/clay
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.15 loot menu:menu/trades/oak_leaves
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.16 loot menu:menu/trades/spruce_leaves
#------------------------------------------#