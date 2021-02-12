#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CREATE LIST----------------#
data modify storage blue:crafting Recipes[0].RecipeData[4].Slot set value 4b
data modify storage blue:crafting Recipes[0].RecipeData[4].tag merge value {RecipeTags:[]}
#---------------COUNT TAGS-----------------#
execute store result score ItemCount CraftFilledSlots run data get storage blue:crafting Recipes[0].RecipeData[4].Count
execute if score ItemCount CraftFilledSlots matches 10.. run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "COUNT_10+"
execute if score ItemCount CraftFilledSlots matches 32.. run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "COUNT_32+"
execute if score ItemCount CraftFilledSlots matches 64.. run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "COUNT_64+"
#---------------PLANKS TAG-----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:spruce_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:birch_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:jungle_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:acacia_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:dark_oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "PLANKS"
#--------STONE CRAFTING MATERIALS----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
#----------------LOGS TAG------------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:spruce_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:birch_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:jungle_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:acacia_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:dark_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "LOGS"
#--------SOUL FIRE BASE BLOCKS TAG---------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:soul_sand"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "SOUL_FIRE_BASE_BLOCKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:soul_soil"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "SOUL_FIRE_BASE_BLOCKS"
#------------------WOOL--------------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:white_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:orange_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:magenta_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:light_blue_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:yellow_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:lime_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:pink_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:gray_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:light_gray_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:cyan_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:purple_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:blue_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:brown_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:green_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:red_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:4b,id:"minecraft:black_wool"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[4].tag.RecipeTags append value "WOOL"
#------------------------------------------#