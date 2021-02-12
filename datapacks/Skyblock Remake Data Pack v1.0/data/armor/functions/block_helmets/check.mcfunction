execute as @a store success score @s BlockHelmetSwap run data get entity @s Inventory[{}].tag.BlockHelmet
execute as @a if score @s BlockHelmetSwap matches 1 run function armor:block_helmets/block_to_helmet
execute as @a if score @s BlockHelmetSwap matches 1 run scoreboard players reset @s BlockHelmetSwap