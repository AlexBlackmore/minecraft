#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 1 2 1

execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run scoreboard players set @s CustomEnchPage 0
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:0b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run scoreboard players set @s CustomEnchPage 1
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:1b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run scoreboard players set @s CustomEnchPage 2
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:2b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run scoreboard players set @s CustomEnchPage 3
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:3b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run scoreboard players set @s CustomEnchPage 4
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:4b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run scoreboard players set @s CustomEnchPage 5
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:5b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run scoreboard players set @s CustomEnchPage 6
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:6b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run scoreboard players set @s CustomEnchPage 7
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:7b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run scoreboard players set @s CustomEnchPage 8
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:8b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run scoreboard players set @s CustomEnchPage 9
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:9b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b}] run scoreboard players set @s CustomEnchPage 10
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:10b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:11b}] run scoreboard players set @s CustomEnchPage 11
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:11b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:12b}] run scoreboard players set @s CustomEnchPage 12
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:12b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:13b}] run scoreboard players set @s CustomEnchPage 13
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:13b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:14b}] run scoreboard players set @s CustomEnchPage 14
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:14b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:15b}] run scoreboard players set @s CustomEnchPage 15
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:15b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:16b}] run scoreboard players set @s CustomEnchPage 16
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:16b}] run function cheats:custom_enchanting/open_page
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:17b}] run scoreboard players set @s CustomEnchPage 17
execute if entity @s[scores={M_PageDelay=0}] unless data entity @s Items[{Slot:17b}] run function cheats:custom_enchanting/open_page

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
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 26b, id: "minecraft:arrow"}]}] run scoreboard players set @s M_NewPage 120

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:spider_eye", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Bane of Arthropods.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Bane of Arthropods Book","color":"green","italic":false}'}}}, {Slot: 1b, id: "minecraft:pufferfish", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Cleave.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Cleave Book","color":"green","italic":false}'}}}, {Slot: 2b, id: "minecraft:diamond", Count: 1b, tag: {SkyblockMenu:1b,Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Critical.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Critical Book","color":"green","italic":false}'}}}, {Slot: 3b, id: "minecraft:carved_pumpkin", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Cubism.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Cubism Book","color":"green","italic":false}'}}}, {Slot: 4b, id: "minecraft:dragon_egg", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Dragon Hunter.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Dragon Hunter Book","color":"green","italic":false}'}}}, {Slot: 5b, id: "minecraft:ender_pearl", Count: 1b, tag: {SkyblockMenu:1b,Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Ender Slayer.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Ender Slayer Book","color":"green","italic":false}'}}}, {Slot: 6b, id: "minecraft:diamond", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Execute.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Execute Book","color":"green","italic":false}'}}}, {Slot: 7b, id: "minecraft:lapis_lazuli", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Experience.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Experience Book","color":"green","italic":false}'}}}, {Slot: 8b, id: "minecraft:blaze_rod", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Fire Aspect.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Fire Aspect Book","color":"green","italic":false}'}}}, {Slot: 9b, id: "minecraft:flint", Count: 1b, tag: {SkyblockMenu:1b,Enchantments:[{}], display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for First Strike.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"First Strike Book","color":"green","italic":false}'}}}, {Slot: 10b, id: "minecraft:ghast_tear", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Giant Killer.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Giant Killer Book","color":"green","italic":false}'}}}, {Slot: 11b, id: "minecraft:prismarine_shard", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Impaling.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Impaling Book","color":"green","italic":false}'}}}, {Slot: 12b, id: "minecraft:slime_ball", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Knockback.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Knockback Book","color":"green","italic":false}'}}}, {Slot: 13b, id: "minecraft:obsidian", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Lethality.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Lethality Book","color":"green","italic":false}'}}}, {Slot: 14b, id: "minecraft:enchanted_golden_apple", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Life Steal.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Life Steal Book","color":"green","italic":false}'}}}, {Slot: 15b, id: "minecraft:gold_block", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Looting.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Looting Book","color":"green","italic":false}'}}}, {Slot: 16b, id: "minecraft:rabbit_hide", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Luck.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Luck Book","color":"green","italic":false}'}}}, {Slot: 17b, id: "minecraft:golden_sword", Count: 1b, tag: {SkyblockMenu:1b, HideFlags:63, display: {Lore: ['[{"text":"A custom Enchanted Book","color":"gray","italic":false}]','[{"text":"for Scavenger.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Click to create!","color":"yellow","italic":false}]'], Name: '{"text":"Scavenger Book","color":"green","italic":false}'}}}, {Slot: 18b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Get Item Categories","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Next Page","color":"green","italic":false}'}}}]}
#------------------------------------------#