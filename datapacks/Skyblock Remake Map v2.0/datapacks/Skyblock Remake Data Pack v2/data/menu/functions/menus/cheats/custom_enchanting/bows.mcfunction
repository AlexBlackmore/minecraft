#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 1 2 1

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run scoreboard players set @s CustomEnchPage 24
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run scoreboard players set @s CustomEnchPage 3
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run scoreboard players set @s CustomEnchPage 4
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run scoreboard players set @s CustomEnchPage 25
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run scoreboard players set @s CustomEnchPage 11
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run scoreboard players set @s CustomEnchPage 26
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run scoreboard players set @s CustomEnchPage 27
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run scoreboard players set @s CustomEnchPage 28
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run scoreboard players set @s CustomEnchPage 29
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run scoreboard players set @s CustomEnchPage 30
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b}] run scoreboard players set @s CustomEnchPage 20
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b}] run function cheats:custom_enchanting/open_page

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
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:compass", Count: 1b, tag: {SkyblockMenu:1b, HideFlags:63, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Aiming.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Aiming Book","color":"green","italic":false}'}}}, {Slot: 1b, id: "minecraft:pumpkin", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Cubism.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Cubism Book","color":"green","italic":false}'}}}, {Slot: 2b, id: "minecraft:dragon_egg", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Dragon Hunter.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Dragon Hunter Book","color":"green","italic":false}'}}}, {Slot: 3b, id: "minecraft:blaze_rod", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Flame.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Flame Book","color":"green","italic":false}'}}}, {Slot: 4b, id: "minecraft:prismarine_shard", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Impaling.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Impaling Book","color":"green","italic":false}'}}}, {Slot: 5b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Infinite Quiver.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Infinite Quiver Book","color":"green","italic":false}'}}}, {Slot: 6b, id: "minecraft:cactus", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Piercing.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Piercing Book","color":"green","italic":false}'}}}, {Slot: 7b, id: "minecraft:bone", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Power.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Power Book","color":"green","italic":false}'}}}, {Slot: 8b, id: "minecraft:slime_ball", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Punch.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Punch Book","color":"green","italic":false}'}}}, {Slot: 9b, id: "minecraft:feather", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Snipe.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Snipe Book","color":"green","italic":false}'}}}, {Slot: 10b, id: "minecraft:ender_eye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Telekinesis.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Telekinesis Book","color":"green","italic":false}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 15b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Previous Page","color":"green","italic":false}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Get Item Categories","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}
#------------------------------------------#