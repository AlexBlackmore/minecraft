execute store result score @s backpacks.pages run data get entity @s SelectedItem.tag.Pages
execute if score @s backpacks.pages matches 1 run function backpacks:holding/single_page/main
execute if score @s backpacks.pages matches 2.. run function backpacks:holding/multiple_page/main