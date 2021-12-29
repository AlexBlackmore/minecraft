#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
data modify entity @s CustomName set value '{"text":"Maddox"}'

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier"}]}] run function menu:close_menu
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:rotten_flesh"}]}] run scoreboard players set @s M_NewPage 241
execute if score @p S_ZHighSlain matches 2.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, id: "minecraft:cobweb"}]}] run scoreboard players set @s M_NewPage 243
execute if score @p S_SHighSlain matches 2.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, id: "minecraft:mutton"}]}] run scoreboard players set @s M_NewPage 245
execute if score @p S_ZHighSlain matches 3.. if score @p S_SHighSlain matches 3.. if score @p S_WHighSlain matches 3.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:clock"}]}] run scoreboard players set @s M_NewPage 262

scoreboard players set @p S_SlayerCmbtB 0
execute as @p if score @s S_ZHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_ZHighSlain matches 1..2 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_ZHighSlain matches 1..3 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_ZHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2

execute as @p if score @s S_SHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_SHighSlain matches 1..2 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_SHighSlain matches 1..3 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_SHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2

execute as @p if score @s S_WHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_WHighSlain matches 1..2 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_WHighSlain matches 1..3 run scoreboard players add @s S_SlayerCmbtB 1
execute as @p if score @s S_WHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 loot slayers:menu/revenant_horror

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_ZHighSlain matches 2.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 loot slayers:menu/tarantula_broodfather
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_ZHighSlain matches 2.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 loot slayers:menu/tarantula_broodfather_slay_rev

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_SHighSlain matches 2.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.12 loot slayers:menu/sven_packmaster
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_SHighSlain matches 2.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.12 loot slayers:menu/sven_packmaster_slay_tara


execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 loot slayers:menu/not_coming_soon
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.14 loot slayers:menu/not_coming_soon
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.15 loot slayers:menu/not_coming_soon
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.16 loot slayers:menu/not_coming_soon
execute at @s as @a[tag=Menu,distance=..6,tag=SlayerVeteranBonus] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.24 loot slayers:menu/slayer_veteran_bonus
execute at @s as @a[tag=Menu,distance=..6,tag=!SlayerVeteranBonus] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.24 loot slayers:menu/slayer_veteran_nobonus
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_ZHighSlain matches 1.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.23 loot slayers:menu/global_combat_xp_buff
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_ZHighSlain matches 3.. if score @s S_SHighSlain matches 3.. if score @s S_WHighSlain matches 3.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.21 loot slayers:menu/random_slayer_quest
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.20 loot slayers:menu/slayer_leaderboards
#------------------------------------------#