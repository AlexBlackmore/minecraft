execute if data storage blue:crafting RecipeOutputItem.tag.Base.CraftingRemoveCounts[0] run function crafting:menu/take_items_multiple
execute unless data storage blue:crafting RecipeOutputItem.tag.Base.CraftingRemoveCounts[0] run function crafting:menu/take_items_single

execute if score @p CraftFullInv matches 1 at @p run function crafting:menu/get_loot_table/spawn
execute if score @p CraftFullInv matches 0 run function crafting:menu/get_loot_table/give

execute if data storage blue:crafting Recipes[0].RecipeData[0] if score @s CraftSlot1 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[1] if score @s CraftSlot2 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[2] if score @s CraftSlot3 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[3] if score @s CraftSlot4 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[4] if score @s CraftSlot5 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[5] if score @s CraftSlot6 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[6] if score @s CraftSlot7 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[7] if score @s CraftSlot8 matches ..0 run tag @s remove ShiftClicked
execute if data storage blue:crafting Recipes[0].RecipeData[8] if score @s CraftSlot9 matches ..0 run tag @s remove ShiftClicked

execute if entity @s[tag=ShiftClicked] run function crafting:menu/crafting