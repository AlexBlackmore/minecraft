#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------RETURN ITEMS---------------#
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
#-----------------GET DATA-----------------#
function skyblock:multiplayer_storage/get
execute store result score @s RecipeIndexAt run data get storage blue:multiplayer_storage data.recipe_preview.IndexAt
execute store result score @s RecipeListSize run data get storage blue:multiplayer_storage data.recipe_preview.ListSize
#-----------------BUTTONS------------------#
execute if score @s RecipeIndexAt < @s RecipeListSize if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 26b, id: "minecraft:arrow"}]}] run function menu:recipe_view/next_item
execute if entity @s[tag=!RecipePreviewButtonClicked,tag=RecipeMenu,scores={M_PageDelay=0,RecipeIndexAt=1..},nbt=!{Items:[{Slot: 24b, id: "minecraft:arrow"}]}] run function menu:recipe_view/previous_item_keep
execute if entity @s[tag=!RecipeMenu,scores={M_PageDelay=0},nbt=!{Items:[{Slot: 24b, id: "minecraft:arrow"}]}] run function menu:recipe_view/previous_item_remove
execute if entity @s[tag=RecipeMenu,scores={M_PageDelay=0},nbt=!{Items:[{Slot: 25b, id: "minecraft:barrier"}]}] at @s as @p at @s run function menu:recipe_view/open
execute if entity @s[tag=!RecipeMenu,scores={M_PageDelay=0},nbt=!{Items:[{Slot: 25b, id: "minecraft:barrier"}]}] run function menu:close_menu
#------------SET CURRENT RECIPE------------#
execute if score @s RecipeIndexAt matches 0 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[0]
execute if score @s RecipeIndexAt matches 1 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[1]
execute if score @s RecipeIndexAt matches 2 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[2]
execute if score @s RecipeIndexAt matches 3 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[3]
execute if score @s RecipeIndexAt matches 4 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[4]
execute if score @s RecipeIndexAt matches 5 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[5]
execute if score @s RecipeIndexAt matches 6 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[6]
execute if score @s RecipeIndexAt matches 7 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[7]
execute if score @s RecipeIndexAt matches 8 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[8]
execute if score @s RecipeIndexAt matches 9 run data modify storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.Recipes[9]
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 1b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 2b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 3b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 10b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 11b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 12b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:crafting_table", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Craft this recipe by using","color":"gray","italic":false}','{"text":"a crafting table.","color":"gray","italic":false}'], Name: '{"text":"Crafting Table","color":"green","italic":false}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 19b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 20b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 21b, id: "minecraft:scute", Count: 1b, tag: {CustomModelData:1b,SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 22b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 25b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}]}

data modify entity @s Items[{Slot:0b}].tag.CurrentRecipe set from storage blue:multiplayer_storage data.recipe_preview.CurrentRecipe
loot replace entity @s container.0 loot menu:menu/recipe_view/recipe
data modify entity @s Items[{Slot:0b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:0b}].tag.display set value {Name: '{"text":""}'}

data modify entity @s Items[{Slot:1b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:1b}]
data modify entity @s Items[{Slot:2b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:2b}]
data modify entity @s Items[{Slot:3b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:3b}]
data modify entity @s Items[{Slot:10b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:10b}]
data modify entity @s Items[{Slot:11b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:11b}]
data modify entity @s Items[{Slot:12b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:12b}]
data modify entity @s Items[{Slot:19b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:19b}]
data modify entity @s Items[{Slot:20b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:20b}]
data modify entity @s Items[{Slot:21b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:21b}]
data modify entity @s Items[{Slot:16b}] set from entity @s Items[{Slot:0b}].tag.DisplayData[{Slot:16b}]
data modify entity @s Items[{Slot:1b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:2b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:3b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:10b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:11b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:12b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:19b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:20b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:21b}].tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:16b}].tag.SkyblockMenu set value 1b

execute if entity @s[tag=RecipeMenu] if score @s RecipeIndexAt matches 1.. run loot replace entity @s container.24 loot menu:menu/recipe_view/previous_item
execute unless entity @s[tag=RecipeMenu] run loot replace entity @s container.24 loot menu:menu/recipe_view/previous_item
execute if score @s RecipeIndexAt < @s RecipeListSize run loot replace entity @s container.26 loot menu:menu/recipe_view/next_item
#----------------SAVE DATA-----------------#
#tellraw @p {"nbt":"data.recipe_preview.CurrentRecipe","storage":"blue:multiplayer_storage","color":"red"}
function skyblock:multiplayer_storage/save
tag @s remove RecipePreviewButtonClicked
#------------------------------------------#