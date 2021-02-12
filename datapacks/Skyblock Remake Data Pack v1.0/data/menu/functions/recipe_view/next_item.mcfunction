#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------RECIPE VIEWER---------------#
scoreboard players add @s RecipeIndexAt 1
execute store result storage blue:multiplayer_storage data.recipe_preview.IndexAt int 1 run scoreboard players get @s RecipeIndexAt
tag @s add RecipePreviewButtonClicked
#------------------------------------------#