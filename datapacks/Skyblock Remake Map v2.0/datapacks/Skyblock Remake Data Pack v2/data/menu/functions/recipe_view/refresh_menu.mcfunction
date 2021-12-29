#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function skyblock:multiplayer_storage/get
data remove storage blue:multiplayer_storage data.recipe_preview
data modify storage blue:multiplayer_storage data.recipe_preview set from entity @s SelectedItem.tag.Base.recipe_preview
data modify storage blue:multiplayer_storage data.recipe_preview.IndexAt set value 0
execute store result score Temp RecipeListSize run data get entity @s SelectedItem.tag.Base.recipe_preview.Recipes
scoreboard players remove Temp RecipeListSize 1
execute store result storage blue:multiplayer_storage data.recipe_preview.ListSize int 1 run scoreboard players get Temp RecipeListSize
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function skyblock:multiplayer_storage/save
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run loot replace entity @s container.26 loot menu:menu/recipe_view/next_item
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:chest_main
advancement revoke @s only menu:open_recipe_menu
#------------------------------------------#