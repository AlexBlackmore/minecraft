data modify storage compare Compare set from storage comparetemp Compare
data modify storage compareslotremoval Compare set from entity @s Inventory[{Slot:26b}]
data remove storage minecraft:compareslotremoval Compare.Slot
data remove storage minecraft:compareslotremoval Compare.Count
data remove storage minecraft:compareslotremoval Compare.tag
execute store success score $CountSlot26 I_BWBlank_Score run data modify storage compare Compare set from storage compareslotremoval Compare
execute if score $CountSlot26 I_BWBlank_Score matches 0 store result score $CountSlot26 I_BWBlank_Score2 run data get entity @s Inventory[{Slot:26b}].Count
execute if score $CountSlot26 I_BWBlank_Score matches 0 run scoreboard players operation $CountTotal I_BWBlank_Score += $CountSlot26 I_BWBlank_Score2