execute if data storage blue:crafting TakeItems[{Slot:2b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:2b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:2b}].Count byte 1 run scoreboard players get @s CraftSlot1
