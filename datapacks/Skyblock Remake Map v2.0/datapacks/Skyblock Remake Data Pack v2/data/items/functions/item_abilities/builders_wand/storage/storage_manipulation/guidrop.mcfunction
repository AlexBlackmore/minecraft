execute if score $Slot0 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot0
execute if score $Slot1 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot1
execute if score $Slot2 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot2
execute if score $Slot3 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot3
execute if score $Slot4 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot4
execute if score $Slot5 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot5
execute if score $Slot6 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot6
execute if score $Slot7 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot7
execute if score $Slot8 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot8
execute if score $Slot9 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot9
execute if score $Slot10 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot10
execute if score $Slot11 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot11
execute if score $Slot12 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot12
execute if score $Slot13 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot13
execute if score $Slot14 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot14
execute if score $Slot15 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot15
execute if score $Slot16 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot16
execute if score $Slot17 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot17
execute if score $Slot18 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot18
execute if score $Slot19 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot19
execute if score $Slot20 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot20
execute if score $Slot21 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot21
execute if score $Slot22 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot22
execute if score $Slot23 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot23
execute if score $Slot24 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot24
execute if score $Slot25 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot25
execute if score $Slot26 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot26
execute if score $Slot27 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot27
execute if score $Slot28 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot28
execute if score $Slot29 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot29
execute if score $Slot30 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot30
execute if score $Slot31 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot31
execute if score $Slot32 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot32
execute if score $Slot33 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot33
execute if score $Slot34 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot34
execute if score $Slot35 I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/storage/guidrop/slot35
#say guidrop

execute store result score @s I_BWBuildAmount run clear @p minecraft:warped_fungus_on_a_stick{builder:1b} 0
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot0 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:0}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot1 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:1}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
##execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot2 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:2}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot3 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:3}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot4 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:4}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot5 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:5}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot6 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:6}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot7 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:7}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
#execute if entity @s[scores={I_BWBuildAmount=1..}] unless score $Slot8 I_BWBlank_Score = @s I_BWandID if entity @p[nbt={SelectedItemSlot:8}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck
execute if entity @s[scores={I_BWBuildAmount=1..}] run clear @p minecraft:warped_fungus_on_a_stick{builder:1b}
execute if entity @s[scores={I_BWBuildAmount=1..}] run function items:item_abilities/builders_wand/storage/storage_manipulation/guiddrop2
execute as @p at @s run function items:item_abilities/builders_wand/storage/newmenu
execute as @e[tag=NOID] run function items:item_abilities/builders_wand/storage/storage_manipulation/guidropreplace
