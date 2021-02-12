#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CREATE LIST----------------#
data modify storage blue:crafting Recipes[0].RecipeData[7].Slot set value 7b
data modify storage blue:crafting Recipes[0].RecipeData[7].tag merge value {RecipeTags:[]}
#---------------COUNT TAGS-----------------#
execute store result score ItemCount CraftFilledSlots run data get storage blue:crafting Recipes[0].RecipeData[7].Count
execute if score ItemCount CraftFilledSlots matches 10.. run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "COUNT_10+"
execute if score ItemCount CraftFilledSlots matches 32.. run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "COUNT_32+"
execute if score ItemCount CraftFilledSlots matches 64.. run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "COUNT_64+"
#---------------PLANKS TAG-----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:spruce_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:birch_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:jungle_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:acacia_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:dark_oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "PLANKS"
#--------STONE CRAFTING MATERIALS----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
#----------------LOGS TAG------------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:spruce_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:birch_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:jungle_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:acacia_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:dark_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "LOGS"
#-------------WOOD SLABS TAG---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:spruce_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:birch_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:jungle_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:acacia_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:7b,id:"minecraft:dark_oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[7].tag.RecipeTags append value "WOODEN_SLABS"
#------------------------------------------#