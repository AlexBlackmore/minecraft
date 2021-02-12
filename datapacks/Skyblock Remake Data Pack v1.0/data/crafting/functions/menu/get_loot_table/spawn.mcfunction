execute if score @s CraftDim_x matches 3 if score @s CraftDim_y matches 3 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/3x3 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 2 if score @s CraftDim_y matches 3 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/2x3 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 3 if score @s CraftDim_y matches 2 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/3x2 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 1 if score @s CraftDim_y matches 3 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/1x3 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 1 if score @s CraftDim_y matches 2 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/1x2 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 3 if score @s CraftDim_y matches 1 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/3x1 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 2 if score @s CraftDim_y matches 2 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/2x2 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 2 if score @s CraftDim_y matches 1 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/2x1 ~ ~ ~ mainhand
execute if score @s CraftDim_x matches 1 if score @s CraftDim_y matches 1 as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/1x1 ~ ~ ~ mainhand
execute as @e[tag=CraftingEvaluator,limit=1] run loot spawn ~ ~ ~ fish crafting:menu/shapeless ~ ~ ~ mainhand
data modify storage blue:crafting RecipeOutputItem set from entity @s Items[{Slot:15b}]