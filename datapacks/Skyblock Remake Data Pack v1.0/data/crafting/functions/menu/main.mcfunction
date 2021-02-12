#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------CRAFTING------------------#
data modify storage blue:crafting RowRemove set from entity @s Items

function crafting:menu/player_moving

execute unless data storage blue:crafting RowRemove[{Slot:0b}].tag.SkyblockMenu run function crafting:menu/return_item/0
execute unless data storage blue:crafting RowRemove[{Slot:15b}].tag.SkyblockMenu unless data storage blue:crafting RowRemove[{Slot:15b}].tag.RecipeTaken run function crafting:menu/return_item/15

data remove entity @s Items[{Slot:15b}]
data merge storage blue:crafting {Recipes:[{RecipeData:[{Slot:2b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:3b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:4b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:11b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:12b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:13b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:20b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:21b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:22b,id:"minecraft:air",tag:{no_nbt:1b}}]}]}
data modify storage blue:crafting Recipes[0].RecipeData[0] set from storage blue:crafting RowRemove[{Slot:2b}]
data modify storage blue:crafting Recipes[0].RecipeData[1] set from storage blue:crafting RowRemove[{Slot:3b}]
data modify storage blue:crafting Recipes[0].RecipeData[2] set from storage blue:crafting RowRemove[{Slot:4b}]
data modify storage blue:crafting Recipes[0].RecipeData[3] set from storage blue:crafting RowRemove[{Slot:11b}]
data modify storage blue:crafting Recipes[0].RecipeData[4] set from storage blue:crafting RowRemove[{Slot:12b}]
data modify storage blue:crafting Recipes[0].RecipeData[5] set from storage blue:crafting RowRemove[{Slot:13b}]
data modify storage blue:crafting Recipes[0].RecipeData[6] set from storage blue:crafting RowRemove[{Slot:20b}]
data modify storage blue:crafting Recipes[0].RecipeData[7] set from storage blue:crafting RowRemove[{Slot:21b}]
data modify storage blue:crafting Recipes[0].RecipeData[8] set from storage blue:crafting RowRemove[{Slot:22b}]

function crafting:menu/remove_rows_columns/main

data modify entity @e[tag=CraftingEvaluator,limit=1] HandItems[0].tag set from storage blue:crafting Recipes[0]
execute at @s run function crafting:menu/get_loot_table/replace
execute if data entity @s Items[{Slot:15b}] unless data entity @s Items[{Slot:15b}].tag.SkyblockMenu run data modify entity @s Items[{Slot:15b}] merge value {tag:{RecipeTaken:1b}}

execute if data entity @p Inventory[{tag:{RecipeTaken:1b}}] run tag @s add ShiftClicked
execute store success score @s CraftTaken run clear @p #skyblock:all{RecipeTaken:1b}
execute if score @s CraftTaken matches 1 run function crafting:menu/craft_init
#------------------------------------------#