#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 1 2 1

execute unless data entity @s Items[{Slot:0b}] run loot give @p loot cheats:get_items/sword/shaman_sword
execute unless data entity @s Items[{Slot:1b}] run loot give @p loot cheats:get_items/sword/silent_death
execute unless data entity @s Items[{Slot:2b}] run loot give @p loot cheats:get_items/sword/silk_edge_sword
execute unless data entity @s Items[{Slot:3b}] run loot give @p loot cheats:get_items/sword/silver_fang
execute unless data entity @s Items[{Slot:4b}] run loot give @p loot cheats:get_items/sword/spider_sword
execute unless data entity @s Items[{Slot:5b}] run loot give @p loot cheats:get_items/sword/spirit_sceptre
execute unless data entity @s Items[{Slot:6b}] run loot give @p loot cheats:get_items/sword/spirit_sword
execute unless data entity @s Items[{Slot:7b}] run loot give @p loot cheats:get_items/sword/stone_sword
execute unless data entity @s Items[{Slot:8b}] run loot give @p loot cheats:get_items/sword/super_cleaver
execute unless data entity @s Items[{Slot:9b}] run loot give @p loot cheats:get_items/sword/sword_of_revalations
execute unless data entity @s Items[{Slot:10b}] run loot give @p loot cheats:get_items/sword/tactician_sword
execute unless data entity @s Items[{Slot:11b}] run loot give @p loot cheats:get_items/sword/undead_sword
execute unless data entity @s Items[{Slot:12b}] run loot give @p loot cheats:get_items/sword/valkyrie
execute unless data entity @s Items[{Slot:13b}] run loot give @p loot cheats:get_items/sword/voodoo_doll
execute unless data entity @s Items[{Slot:14b}] run loot give @p loot cheats:get_items/sword/wither_cloak_sword
execute unless data entity @s Items[{Slot:15b}] run loot give @p loot cheats:get_items/sword/wooden_sword
execute unless data entity @s Items[{Slot:16b}] run loot give @p loot cheats:get_items/sword/yeti_sword
execute unless data entity @s Items[{Slot:17b}] run loot give @p loot cheats:get_items/sword/zombie_commander_whip

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow", Count: 1b}]}] run scoreboard players set @s M_NewPage 92

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 18b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 103
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 26b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 162

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 18b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Previous Page","color":"green","italic":false}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Get Item Categories","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Next Page","color":"green","italic":false}'}}}]}
loot replace entity @s container.0 loot cheats:menu/get_items/swords/4
#------------------------------------------#