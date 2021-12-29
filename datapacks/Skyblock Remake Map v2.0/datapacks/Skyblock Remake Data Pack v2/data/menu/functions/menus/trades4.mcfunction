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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 9b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 14

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:soul_sand"}]}] if entity @p[scores={C_SandL=3..}] as @p run function menu:trades/click/soul_sand
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:mycelium"}]}] if entity @p[scores={C_MushroomL=2..}] as @p run function menu:trades/click/mycelium
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:nether_brick"}]}] if entity @p[scores={C_NetherrackL=3..}] as @p run function menu:trades/click/nether_brick
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:sponge"}]}] if entity @p[scores={C_SpongeL=2..}] as @p run function menu:trades/click/sponge
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, id: "minecraft:end_portal_frame"}]}] if entity @p[scores={C_EnderpearlL=7..}] as @p run function menu:trades/click/teleport_pad


execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage -1

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu

execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_SandL=..2}] unless data entity @s Items[{Slot:10b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_MushroomL=..1}] unless data entity @s Items[{Slot:11b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_NetherrackL=..2}] unless data entity @s Items[{Slot:12b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_SpongeL=..1}] unless data entity @s Items[{Slot:13b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked
execute if entity @s[scores={M_PageDelay=0}] if entity @p[scores={C_EnderpearlL=..6}] unless data entity @s Items[{Slot:14b,id:"minecraft:gray_dye"}] as @p run function menu:trades/fail_notunlocked

execute as @p if entity @s[scores={TradeHadItems=0}] run function menu:trades/fail_noitems
execute as @p if entity @s[scores={TradeHadItems=0,TradeHadItems2=0}] run function menu:trades/fail_noitems
execute as @p if entity @s[scores={TradeHadItems=0,TradeHadItems2=1}] run function menu:trades/fail_noitems
execute as @p if entity @s[scores={TradeHadItems=1,TradeHadItems2=0}] run function menu:trades/fail_noitems
scoreboard players reset @p TradeHadItems
scoreboard players reset @p TradeHadItems2
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Go Up","color":"green","italic":false}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['{"text":"To SkyBlock Menu","color":"gray","italic":false}'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}

execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 loot menu:menu/trades/soul_sand
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 loot menu:menu/trades/mycelium
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.12 loot menu:menu/trades/nether_brick
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 loot menu:menu/trades/sponge
execute if entity @s[tag=!EnderMenuChest] at @s as @a[nbt={SelectedItemSlot:8},tag=Menu,distance=..4] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.14 loot menu:menu/trades/teleport_pad
#------------------------------------------#