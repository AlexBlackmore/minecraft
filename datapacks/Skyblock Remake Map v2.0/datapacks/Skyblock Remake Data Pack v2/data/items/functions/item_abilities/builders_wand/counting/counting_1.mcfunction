function items:item_abilities/builders_wand/counting/counting_1_recursive
#execute if score $Build_Count I_BWBlank_Score matches 166.. run function items:item_abilities/builders_wand/click/165limit
#execute at @e[tag=Count1] unless block ~1 ~ ~ #items:no_builder run clone ~1 ~ ~ ~1 ~ ~ ~ ~ ~



































scoreboard players set $Build_Count I_BWBlank_Score 0
scoreboard players set $Build_Count2 I_BWBlank_Score 0
kill @e[tag=Count1]