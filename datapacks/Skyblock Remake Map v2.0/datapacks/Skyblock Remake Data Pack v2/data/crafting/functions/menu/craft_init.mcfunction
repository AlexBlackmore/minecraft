playsound minecraft:block.note_block.pling player @p ~ ~ ~ 1 2 1
execute store result score @s CraftSlot1 run data get storage blue:crafting Recipes[0].RecipeData[0].Count
execute store result score @s CraftSlot2 run data get storage blue:crafting Recipes[0].RecipeData[1].Count
execute store result score @s CraftSlot3 run data get storage blue:crafting Recipes[0].RecipeData[2].Count
execute store result score @s CraftSlot4 run data get storage blue:crafting Recipes[0].RecipeData[3].Count
execute store result score @s CraftSlot5 run data get storage blue:crafting Recipes[0].RecipeData[4].Count
execute store result score @s CraftSlot6 run data get storage blue:crafting Recipes[0].RecipeData[5].Count
execute store result score @s CraftSlot7 run data get storage blue:crafting Recipes[0].RecipeData[6].Count
execute store result score @s CraftSlot8 run data get storage blue:crafting Recipes[0].RecipeData[7].Count
execute store result score @s CraftSlot9 run data get storage blue:crafting Recipes[0].RecipeData[8].Count
function crafting:menu/crafting
function crafting:menu/take_items_final
tag @s remove ShiftClicked