scoreboard players add Current CraftFilledSlots 1
execute if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot3
