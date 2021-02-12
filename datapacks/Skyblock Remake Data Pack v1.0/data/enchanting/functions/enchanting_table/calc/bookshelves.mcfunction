#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
scoreboard players set @s E_AddBookshelves 0

execute if block ~2 ~ ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~ ~1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~ ~ minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~ ~-1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~ ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~2 ~1 ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~1 ~1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~1 ~ minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~1 ~-1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~2 ~1 ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~-2 ~ ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~ ~1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~ ~ minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~ ~-1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~ ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~-2 ~1 ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~1 ~1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~1 ~ minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~1 ~-1 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-2 ~1 ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~1 ~ ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~ ~ ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-1 ~ ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~1 ~1 ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~ ~1 ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-1 ~1 ~2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~1 ~ ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~ ~ ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-1 ~ ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1

execute if block ~1 ~1 ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~ ~1 ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
execute if block ~-1 ~1 ~-2 minecraft:bookshelf run scoreboard players add @s E_AddBookshelves 1
#------------------------------------------#