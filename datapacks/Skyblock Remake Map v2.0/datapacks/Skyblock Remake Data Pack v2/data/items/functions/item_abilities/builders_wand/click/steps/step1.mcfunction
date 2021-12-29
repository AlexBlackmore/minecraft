execute if score $Face I_BWBlank_Score matches 1 run function items:item_abilities/builders_wand/counting/counting_1_recursive
execute if score $Face I_BWBlank_Score matches 2 run function items:item_abilities/builders_wand/counting/counting_2_recursive
execute if score $Face I_BWBlank_Score matches 3 run function items:item_abilities/builders_wand/counting/counting_3_recursive
execute if score $Face I_BWBlank_Score matches 4 run function items:item_abilities/builders_wand/counting/counting_4_recursive
execute if score $Face I_BWBlank_Score matches 5 run function items:item_abilities/builders_wand/counting/counting_5_recursive
execute if score $Face I_BWBlank_Score matches 6 run function items:item_abilities/builders_wand/counting/counting_6_recursive
execute if score $Build_Count I_BWBlank_Score matches 165.. run tellraw @p ["",{"text":"You may not Grand Architect that many blocks! (","color":"red"},{"text":"Over 164!)","color":"red"}]
execute if score InfiniteBuilderWand Setting matches 0 unless score $Build_Count I_BWBlank_Score matches 165.. run function items:item_abilities/builders_wand/click/steps/step2
execute if score InfiniteBuilderWand Setting matches 1 unless score $Build_Count I_BWBlank_Score matches 165.. run function items:item_abilities/builders_wand/click/steps/cheat