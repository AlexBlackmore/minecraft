function items:item_abilities/builders_wand/counting/counting_5_recursive
execute if score $Build_Count I_BWBlank_Score matches 166.. run function items:item_abilities/builders_wand/click/165limit
execute at @e[tag=Count5] unless block ~ ~-1 ~ #items:no_builder run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute at @e[tag=CountAll] unless block ~ ~-1 ~ #items:no_builder run loot give @p mine ~ ~-1 ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
kill @e[tag=Count5]
scoreboard players set $Build_Count I_BWBlank_Score 0
scoreboard players set $Build_Count2 I_BWBlank_Score 0