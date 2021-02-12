execute store success score @s CraftDim_x1 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:air"},{Slot:11b,id:"minecraft:air"},{Slot:20b,id:"minecraft:air"}]}]
execute store success score @s CraftDim_x2 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:3b,id:"minecraft:air"},{Slot:12b,id:"minecraft:air"},{Slot:21b,id:"minecraft:air"}]}]
execute store success score @s CraftDim_x3 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:air"},{Slot:13b,id:"minecraft:air"},{Slot:22b,id:"minecraft:air"}]}]
execute store success score @s CraftDim_y1 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:air"},{Slot:3b,id:"minecraft:air"},{Slot:4b,id:"minecraft:air"}]}]
execute store success score @s CraftDim_y2 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:11b,id:"minecraft:air"},{Slot:12b,id:"minecraft:air"},{Slot:13b,id:"minecraft:air"}]}]
execute store success score @s CraftDim_y3 unless data storage blue:crafting Recipes[{RecipeData:[{Slot:20b,id:"minecraft:air"},{Slot:21b,id:"minecraft:air"},{Slot:22b,id:"minecraft:air"}]}]

execute if score @s CraftDim_x1 matches 1 if score @s CraftDim_x3 matches 1 run scoreboard players set @s CraftDim_x2 1
execute if score @s CraftDim_y1 matches 1 if score @s CraftDim_y3 matches 1 run scoreboard players set @s CraftDim_y2 1

scoreboard players operation @s CraftDim_x = @s CraftDim_x1
scoreboard players operation @s CraftDim_x += @s CraftDim_x2
scoreboard players operation @s CraftDim_x += @s CraftDim_x3
scoreboard players operation @s CraftDim_y = @s CraftDim_y1
scoreboard players operation @s CraftDim_y += @s CraftDim_y2
scoreboard players operation @s CraftDim_y += @s CraftDim_y3

scoreboard players set @s CraftFilledSlots 0
execute if data storage blue:crafting RowRemove[{Slot:2b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:3b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:4b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:11b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:12b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:13b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:20b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:21b}].id run scoreboard players add @s CraftFilledSlots 1
execute if data storage blue:crafting RowRemove[{Slot:22b}].id run scoreboard players add @s CraftFilledSlots 1
execute store result storage blue:crafting RecipeFilledSlots int 1 run scoreboard players get @s CraftFilledSlots

execute if score @s CraftDim_x1 matches 0 run function crafting:menu/remove_rows_columns/x1
execute if score @s CraftDim_x2 matches 0 run function crafting:menu/remove_rows_columns/x2
execute if score @s CraftDim_x3 matches 0 run function crafting:menu/remove_rows_columns/x3
execute if score @s CraftDim_y1 matches 0 run function crafting:menu/remove_rows_columns/y1
execute if score @s CraftDim_y2 matches 0 run function crafting:menu/remove_rows_columns/y2
execute if score @s CraftDim_y3 matches 0 run function crafting:menu/remove_rows_columns/y3

execute if data storage blue:crafting Recipes[0].RecipeData[0] run function crafting:menu/item_tags/slot_0
execute if data storage blue:crafting Recipes[0].RecipeData[1] run function crafting:menu/item_tags/slot_1
execute if data storage blue:crafting Recipes[0].RecipeData[2] run function crafting:menu/item_tags/slot_2
execute if data storage blue:crafting Recipes[0].RecipeData[3] run function crafting:menu/item_tags/slot_3
execute if data storage blue:crafting Recipes[0].RecipeData[4] run function crafting:menu/item_tags/slot_4
execute if data storage blue:crafting Recipes[0].RecipeData[5] run function crafting:menu/item_tags/slot_5
execute if data storage blue:crafting Recipes[0].RecipeData[6] run function crafting:menu/item_tags/slot_6
execute if data storage blue:crafting Recipes[0].RecipeData[7] run function crafting:menu/item_tags/slot_7
execute if data storage blue:crafting Recipes[0].RecipeData[8] run function crafting:menu/item_tags/slot_8