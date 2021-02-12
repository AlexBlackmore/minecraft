#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CREATE LIST----------------#
data modify storage blue:crafting Recipes[0].RecipeData[0].Slot set value 0b
data modify storage blue:crafting Recipes[0].RecipeData[0].tag merge value {RecipeTags:[]}
#---------------COUNT TAGS-----------------#
execute store result score ItemCount CraftFilledSlots run data get storage blue:crafting Recipes[0].RecipeData[0].Count
execute if score ItemCount CraftFilledSlots matches 10.. run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "COUNT_10+"
execute if score ItemCount CraftFilledSlots matches 32.. run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "COUNT_32+"
execute if score ItemCount CraftFilledSlots matches 64.. run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "COUNT_64+"
#---------------PLANKS TAG-----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:spruce_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:birch_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:jungle_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:acacia_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:dark_oak_planks"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "PLANKS"
#--------STONE CRAFTING MATERIALS----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "STONE_CRAFTING_MATERIALS"
#-------------WOOD SLABS TAG---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:spruce_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:birch_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:jungle_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:acacia_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:dark_oak_slab"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WOODEN_SLABS"
#-----------STONE TOOL MATERIALS-----------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:cobblestone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "STONE_TOOL_MATERIALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:blackstone"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "STONE_TOOL_MATERIALS"
#------------------COALS-------------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:coal"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "COALS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:charcoal"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "COALS"
#---------------ACACIA LOGS----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:acacia_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "ACACIA_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:acacia_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "ACACIA_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_acacia_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "ACACIA_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_acacia_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "ACACIA_LOGS"
#----------------BIRCH LOGS----------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:birch_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "BIRCH_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:birch_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "BIRCH_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_birch_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "BIRCH_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_birch_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "BIRCH_LOGS"
#---------------CRIMSON STEMS--------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:crimson_stem"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "CRIMSON_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_crimson_stem"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "CRIMSON_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:crimson_hyphae"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "CRIMSON_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_crimson_hyphae"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "CRIMSON_STEMS"
#--------------DARK OAK LOGS---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:dark_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "DARK_OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:dark_oak_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "DARK_OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_dark_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "DARK_OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_dark_oak_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "DARK_OAK_LOGS"
#--------------JUNGLE LOGS---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:jungle_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "JUNGLE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:jungle_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "JUNGLE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_jungle_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "JUNGLE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_jungle_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "JUNGLE_LOGS"
#--------------OAK LOGS---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:oak_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_oak_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "OAK_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_oak_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "OAK_LOGS"
#--------------SPRUCE LOGS---------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:spruce_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "SPRUCE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:spruce_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "SPRUCE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_spruce_log"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "SPRUCE_LOGS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_spruce_wood"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "SPRUCE_LOGS"
#---------------WARPED STEMS--------------#
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:warped_stem"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WARPED_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_warped_stem"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WARPED_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:warped_hyphae"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WARPED_STEMS"
execute if data storage blue:crafting Recipes[{RecipeData:[{Slot:0b,id:"minecraft:stripped_warped_hyphae"}]}] run data modify storage blue:crafting Recipes[0].RecipeData[0].tag.RecipeTags append value "WARPED_STEMS"
#------------------------------------------#