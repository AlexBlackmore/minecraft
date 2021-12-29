#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------RECIPE VIEWER---------------#
scoreboard players remove @s RecipeIndexAt 1
execute store result storage blue:multiplayer_storage data.recipe_preview.IndexAt int 1 run scoreboard players get @s RecipeIndexAt

scoreboard players remove @s RecipeListSize 1
execute store result storage blue:multiplayer_storage data.recipe_preview.ListSize int 1 run scoreboard players get @s RecipeListSize
data remove storage blue:multiplayer_storage data.recipe_preview.Recipes[-1]

execute if score @s RecipeIndexAt matches -1 store result score @s M_CurrentPage run data get storage blue:multiplayer_storage data.recipe_preview.PreviousPage
execute if score @s RecipeIndexAt matches -1 run function menu:click_event
#------------------------------------------#