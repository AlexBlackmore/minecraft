#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CREATE LIST----------------#
data modify storage blue:crafting Recipes[0].RecipeData[2].Slot set value 2b
data modify storage blue:crafting Recipes[0].RecipeData[2].tag merge value {RecipeTags:[]}
#---------------COUNT TAGS-----------------#
execute store result score ItemCount CraftFilledSlots run data get storage blue:crafting Recipes[0].RecipeData[2].Count
execute if score ItemCount CraftFilledSlots matches 2.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_2+"
execute if score ItemCount CraftFilledSlots matches 4.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_4+"
execute if score ItemCount CraftFilledSlots matches 5.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_5+"
execute if score ItemCount CraftFilledSlots matches 6.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_6+"
execute if score ItemCount CraftFilledSlots matches 8.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_8+"
execute if score ItemCount CraftFilledSlots matches 9.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_9+"
execute if score ItemCount CraftFilledSlots matches 10.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_10+"
execute if score ItemCount CraftFilledSlots matches 12.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_12+"
execute if score ItemCount CraftFilledSlots matches 16.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_16+"
execute if score ItemCount CraftFilledSlots matches 17.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_17+"
execute if score ItemCount CraftFilledSlots matches 18.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_18+"
execute if score ItemCount CraftFilledSlots matches 20.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_20+"
execute if score ItemCount CraftFilledSlots matches 24.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_24+"
execute if score ItemCount CraftFilledSlots matches 32.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_32+"
execute if score ItemCount CraftFilledSlots matches 39.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_39+"
execute if score ItemCount CraftFilledSlots matches 64.. run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "COUNT_64+"
#---------------WOOD TAG-----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:spruce_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:birch_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:jungle_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:acacia_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:dark_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "LOGS"
#---------------PLANKS TAG-----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:spruce_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:birch_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:jungle_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:acacia_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:dark_oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "PLANKS"
#--------STONE CRAFTING MATERIALS----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
#-------------WOOD SLABS TAG---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:spruce_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:birch_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:jungle_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:acacia_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:dark_oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "WOODEN_SLABS"
#--------STONE TOOL MATERIALS----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "STONE_TOOL_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "STONE_TOOL_MATERIALS"
#--------SOUL FIRE BASE BLOCKS TAG---------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:soul_sand"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "SOUL_FIRE_BASE_BLOCKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:2b,id:"minecraft:soul_soil"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[2].tag.RecipeTags append value "SOUL_FIRE_BASE_BLOCKS"
#------------------------------------------#