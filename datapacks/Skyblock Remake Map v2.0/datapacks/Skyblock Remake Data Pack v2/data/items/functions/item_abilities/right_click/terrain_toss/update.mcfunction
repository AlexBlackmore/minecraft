#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#if a block around the terrain is not air reset
tag @e[tag=toss_block,nbt={OnGround:1b}] add toss_explode
execute as @e[tag=toss_block] at @s unless block ~ ~ ~1 air run tag @s add toss_explode
execute as @e[tag=toss_block] at @s unless block ~ ~ ~-1 air run tag @s add toss_explode
execute as @e[tag=toss_block] at @s unless block ~1 ~ ~ air run tag @s add toss_explode
execute as @e[tag=toss_block] at @s unless block ~-1 ~ ~ air run tag @s add toss_explode
execute as @e[tag=toss_block] at @s anchored feet unless block ~ ~-0.1 ~ air run tag @s add toss_explode
execute as @e[tag=toss_explode,limit=1] at @s run function items:item_abilities/right_click/terrain_toss/damage