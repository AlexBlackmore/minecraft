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

function slayers:calc_comma_values_wolf

execute as @p run function slayers:test_coins_wolf

scoreboard players operation @p Tier1Test = $Tier1Test Temp
scoreboard players operation @p Tier2Test = $Tier2Test Temp
scoreboard players operation @p Tier3Test = $Tier3Test Temp
scoreboard players operation @p Tier4Test = $Tier4Test Temp

execute store result score $TempExp Temp run scoreboard players operation c100000 Constant /= @p S_WolfEXPN
execute store result score $TempExp2 Temp run scoreboard players operation $TempExp Temp *= @p S_WolfEXP
execute store result score @p S_NLvlPercent run scoreboard players operation $TempExp2 Temp /= c1000 Constant
scoreboard players set c100000 Constant 100000

scoreboard players operation $NextSlayerLVL Temp = @p S_WolfLvl
scoreboard players add $NextSlayerLVL Temp 1

execute as @p if entity @s[team=aqua] run scoreboard players operation $PlayerCoins Temp = aqua Coins
execute as @p if entity @s[team=black] run scoreboard players operation $PlayerCoins Temp = black Coins
execute as @p if entity @s[team=blue] run scoreboard players operation $PlayerCoins Temp = blue Coins
execute as @p if entity @s[team=dark_aqua] run scoreboard players operation $PlayerCoins Temp = dark_aqua Coins
execute as @p if entity @s[team=dark_blue] run scoreboard players operation $PlayerCoins Temp = dark_blue Coins
execute as @p if entity @s[team=dark_gray] run scoreboard players operation $PlayerCoins Temp = dark_gray Coins
execute as @p if entity @s[team=dark_green] run scoreboard players operation $PlayerCoins Temp = dark_green Coins
execute as @p if entity @s[team=dark_purple] run scoreboard players operation $PlayerCoins Temp = dark_purple Coins
execute as @p if entity @s[team=dark_red] run scoreboard players operation $PlayerCoins Temp = dark_red Coins
execute as @p if entity @s[team=gold] run scoreboard players operation $PlayerCoins Temp = gold Coins
execute as @p if entity @s[team=gray] run scoreboard players operation $PlayerCoins Temp = gray Coins
execute as @p if entity @s[team=green] run scoreboard players operation $PlayerCoins Temp = green Coins
execute as @p if entity @s[team=light_purple] run scoreboard players operation $PlayerCoins Temp = light_purple Coins
execute as @p if entity @s[team=red] run scoreboard players operation $PlayerCoins Temp = red Coins
execute as @p if entity @s[team=white] run scoreboard players operation $PlayerCoins Temp = white Coins
execute as @p if entity @s[team=yellow] run scoreboard players operation $PlayerCoins Temp = yellow Coins

scoreboard players reset @p Coins
scoreboard players operation @p Coins = $PlayerCoins Temp

execute if score @p S_Combat matches 15.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 5b, id: "minecraft:mutton"}]}] run function menu:menus/maddox/wolf/tier_4_check_coins
execute if score @p S_Combat matches 10.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 4b, id: "minecraft:mutton"}]}] run function menu:menus/maddox/wolf/tier_3_check_coins
execute if score @p S_Combat matches 5.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 3b, id: "minecraft:mutton"}]}] run function menu:menus/maddox/wolf/tier_2_check_coins
execute if score @p S_Combat matches 0.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 2b, id: "minecraft:mutton"}]}] run function menu:menus/maddox/wolf/tier_1_check_coins
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, id: "minecraft:gold_nugget"}]}] run scoreboard players set @s M_NewPage 254
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, id: "minecraft:gold_block"}]}] run scoreboard players set @s M_NewPage 260

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 240

#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot:24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Go Back","color":"green","italic":false}',Lore: '{"text":"To Slayer,"color":"gray","italic":false}'}}}]}
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.2 loot slayers:menu/sven/tier_1
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 loot slayers:menu/sven/tier_2
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot slayers:menu/sven/tier_3
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_WHighSlain matches 1.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.2 loot slayers:menu/sven/tier_1_unknown
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_WHighSlain matches 1.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 loot slayers:menu/sven/tier_2_slay_bef
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_WHighSlain matches 1.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot slayers:menu/sven/tier_3_slay_bef
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_WHighSlain matches 1.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4_slay_bef

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_WHighSlain matches 1 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 loot slayers:menu/sven/tier_2_unknown
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_WHighSlain matches 1 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot slayers:menu/sven/tier_3_slay_bef
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_WHighSlain matches 1 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4_slay_bef


execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_WHighSlain matches 2 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot slayers:menu/sven/tier_3_unknown
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @s S_WHighSlain matches 2 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4_slay_bef

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID if score @p S_WHighSlain matches 3 run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4_unknown

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_Combat matches 5.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 loot slayers:menu/sven/tier_2_combat_xp
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_Combat matches 10.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 loot slayers:menu/sven/tier_3_combat_xp
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID unless score @s S_Combat matches 15.. run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 loot slayers:menu/sven/tier_4_combat_xp

execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.6 loot slayers:menu/tier_not_released
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 loot slayers:menu/sven/rewards
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 loot slayers:menu/sven/boss_drops
execute at @s as @a[tag=Menu,distance=..6] if score @s PlayerID = @e[tag=MenuChest,sort=nearest,limit=1] PlayerID run loot replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.16 loot slayers:menu/sven/recipes


#------------------------------------------#