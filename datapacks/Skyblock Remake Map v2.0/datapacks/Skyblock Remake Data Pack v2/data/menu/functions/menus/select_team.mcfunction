#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
execute store result score $Red TeamOccupied if entity @a[team=red]
execute store result score $Blue TeamOccupied if entity @a[team=blue]
execute store result score $Yellow TeamOccupied if entity @a[team=yellow]
execute store result score $DarkGreen TeamOccupied if entity @a[team=dark_green]
execute store result score $DarkAqua TeamOccupied if entity @a[team=dark_aqua]
execute store result score $DarkBlue TeamOccupied if entity @a[team=dark_blue]
execute store result score $DarkGray TeamOccupied if entity @a[team=dark_gray]
execute store result score $DarkPurple TeamOccupied if entity @a[team=dark_purple]
execute store result score $DarkRed TeamOccupied if entity @a[team=dark_red]
execute store result score $Gray TeamOccupied if entity @a[team=gray]
execute store result score $Green TeamOccupied if entity @a[team=green]
execute store result score $Gold TeamOccupied if entity @a[team=gold]
execute store result score $LightPurple TeamOccupied if entity @a[team=light_purple]
execute store result score $White TeamOccupied if entity @a[team=white]
execute store result score $Black TeamOccupied if entity @a[team=black]
execute store result score $Aqua TeamOccupied if entity @a[team=aqua]

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:1b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/red
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:2b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/green
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:3b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/yellow
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:4b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/aqua
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:5b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/light_purple
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:6b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/gold
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:7b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/white
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:9b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/black
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:10b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_red
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:11b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_green
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:12b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_blue
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:13b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/blue
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:14b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_purple
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:15b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_aqua
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:16b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/gray
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:17b, tag: {SkyblockMenu:1b}}]}] run execute as @p run function profiling:join_team/dark_gray


execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 1b, id: "minecraft:pink_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Red Team","color":"red","italic":false}'}}}, {Slot: 2b, id: "minecraft:lime_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Green Team","color":"green","italic":false}'}}}, {Slot: 3b, id: "minecraft:yellow_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Yellow Team","color":"yellow","italic":false}'}}}, {Slot: 4b, id: "minecraft:light_blue_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Aqua Team","color":"aqua","italic":false}'}}}, {Slot: 5b, id: "minecraft:magenta_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Light Purple Team","color":"light_purple","italic":false}'}}}, {Slot: 6b, id: "minecraft:orange_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Gold Team","color":"gold","italic":false}'}}}, {Slot: 7b, id: "minecraft:white_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"White Team","color":"white","italic":false}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Black Team","color":"dark_gray","italic":false}'}}}, {Slot: 10b, id: "minecraft:red_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Red Team","color":"dark_red","italic":false}'}}}, {Slot: 11b, id: "minecraft:green_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Green Team","color":"dark_green","italic":false}'}}}, {Slot: 12b, id: "minecraft:blue_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Blue Team","color":"dark_blue","italic":false}'}}}, {Slot: 13b, id: "minecraft:blue_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Blue Team","color":"blue","italic":false}'}}}, {Slot: 14b, id: "minecraft:purple_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Purple Team","color":"dark_purple","italic":false}'}}}, {Slot: 15b, id: "minecraft:cyan_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Aqua Team","color":"dark_aqua","italic":false}'}}}, {Slot: 16b, id: "minecraft:light_gray_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Gray Team","color":"gray","italic":false}'}}}, {Slot: 17b, id: "minecraft:gray_concrete", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"Click to select!","color":"yellow","italic":false}]'], Name: '{"text":"Dark Gray Team","color":"dark_gray","italic":false}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}

execute if score $Red TeamOccupied matches 1.. run item replace entity @s container.1 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Red Team","color":"red","italic":false}'}}
execute if score $Green TeamOccupied matches 1.. run item replace entity @s container.2 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Green Team","color":"red","italic":false}'}}
execute if score $Yellow TeamOccupied matches 1.. run item replace entity @s container.3 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Yellow Team","color":"red","italic":false}'}}
execute if score $Aqua TeamOccupied matches 1.. run item replace entity @s container.4 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Aqua Team","color":"red","italic":false}'}}
execute if score $LightPurple TeamOccupied matches 1.. run item replace entity @s container.5 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Light Purple Team","color":"red","italic":false}'}}
execute if score $Gold TeamOccupied matches 1.. run item replace entity @s container.6 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Gold Team","color":"red","italic":false}'}}
execute if score $White TeamOccupied matches 1.. run item replace entity @s container.7 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"White Team","color":"red","italic":false}'}}
execute if score $Black TeamOccupied matches 1.. run item replace entity @s container.9 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Black Team","color":"red","italic":false}'}}
execute if score $DarkRed TeamOccupied matches 1.. run item replace entity @s container.10 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Red Team","color":"red","italic":false}'}}
execute if score $DarkGreen TeamOccupied matches 1.. run item replace entity @s container.11 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Green Team","color":"red","italic":false}'}}
execute if score $DarkBlue TeamOccupied matches 1.. run item replace entity @s container.12 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Blue Team","color":"red","italic":false}'}}
execute if score $Blue TeamOccupied matches 1.. run item replace entity @s container.13 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Blue Team","color":"red","italic":false}'}}
execute if score $DarkPurple TeamOccupied matches 1.. run item replace entity @s container.14 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Purple Team","color":"red","italic":false}'}}
execute if score $DarkAqua TeamOccupied matches 1.. run item replace entity @s container.15 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Aqua Team","color":"red","italic":false}'}}
execute if score $Gray TeamOccupied matches 1.. run item replace entity @s container.16 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Gray Team","color":"red","italic":false}'}}
execute if score $DarkGray TeamOccupied matches 1.. run item replace entity @s container.17 with bedrock{SkyblockMenu:1b,display:{Lore:['{"text":"This team is full!","color":"gray","italic":false}'],Name:'{"text":"Dark Gray Team","color":"red","italic":false}'}}
#------------------------------------------#