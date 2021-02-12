execute if score @s CraftSlot1 matches -1 run scoreboard players operation @s CraftSlot1 >< @s CraftSlot2
execute if score @s CraftSlot2 matches -1 run scoreboard players operation @s CraftSlot2 >< @s CraftSlot3
execute if score @s CraftSlot3 matches -1 run scoreboard players operation @s CraftSlot3 >< @s CraftSlot4
execute if score @s CraftSlot4 matches -1 run scoreboard players operation @s CraftSlot4 >< @s CraftSlot5
execute if score @s CraftSlot5 matches -1 run scoreboard players operation @s CraftSlot5 >< @s CraftSlot6
execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot2 matches -1 run scoreboard players operation @s CraftSlot2 >< @s CraftSlot3
execute if score @s CraftSlot3 matches -1 run scoreboard players operation @s CraftSlot3 >< @s CraftSlot4
execute if score @s CraftSlot4 matches -1 run scoreboard players operation @s CraftSlot4 >< @s CraftSlot5
execute if score @s CraftSlot5 matches -1 run scoreboard players operation @s CraftSlot5 >< @s CraftSlot6
execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot3 matches -1 run scoreboard players operation @s CraftSlot3 >< @s CraftSlot4
execute if score @s CraftSlot4 matches -1 run scoreboard players operation @s CraftSlot4 >< @s CraftSlot5
execute if score @s CraftSlot5 matches -1 run scoreboard players operation @s CraftSlot5 >< @s CraftSlot6
execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot4 matches -1 run scoreboard players operation @s CraftSlot4 >< @s CraftSlot5
execute if score @s CraftSlot5 matches -1 run scoreboard players operation @s CraftSlot5 >< @s CraftSlot6
execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot5 matches -1 run scoreboard players operation @s CraftSlot5 >< @s CraftSlot6
execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot6 matches -1 run scoreboard players operation @s CraftSlot6 >< @s CraftSlot7
execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9

execute if score @s CraftSlot7 matches -1 run scoreboard players operation @s CraftSlot7 >< @s CraftSlot8
execute if score @s CraftSlot8 matches -1 run scoreboard players operation @s CraftSlot8 >< @s CraftSlot9


data modify storage blue:crafting TakeItems set from entity @s Items

scoreboard players set Current CraftFilledSlots 0
scoreboard players set Filled1 CraftFilledSlots 0
scoreboard players set Filled2 CraftFilledSlots 0
scoreboard players set Filled3 CraftFilledSlots 0
scoreboard players set Filled4 CraftFilledSlots 0
scoreboard players set Filled5 CraftFilledSlots 0
scoreboard players set Filled6 CraftFilledSlots 0
scoreboard players set Filled7 CraftFilledSlots 0
scoreboard players set Filled8 CraftFilledSlots 0
scoreboard players set Filled9 CraftFilledSlots 0

execute if data storage blue:crafting TakeItems[{Slot:2b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:2b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:2b}].Count byte 1 run scoreboard players get @s CraftSlot1

execute if data storage blue:crafting TakeItems[{Slot:3b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:3b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:3b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:3b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:3b}].Count byte 1 run scoreboard players get @s CraftSlot2

execute if data storage blue:crafting TakeItems[{Slot:4b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:4b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:4b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:4b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:4b}].Count byte 1 run scoreboard players get @s CraftSlot3

execute if data storage blue:crafting TakeItems[{Slot:11b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:11b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:11b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:11b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:11b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:11b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:11b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:11b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:11b}].Count byte 1 run scoreboard players get @s CraftSlot4

execute if data storage blue:crafting TakeItems[{Slot:12b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:12b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:12b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:12b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:12b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:12b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:12b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:12b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:12b}].Count byte 1 run scoreboard players get @s CraftSlot4
execute if data storage blue:crafting TakeItems[{Slot:12b}].Count if score Current CraftFilledSlots matches 5 store result storage blue:crafting TakeItems[{Slot:12b}].Count byte 1 run scoreboard players get @s CraftSlot5

execute if data storage blue:crafting TakeItems[{Slot:13b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot4
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 5 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot5
execute if data storage blue:crafting TakeItems[{Slot:13b}].Count if score Current CraftFilledSlots matches 6 store result storage blue:crafting TakeItems[{Slot:13b}].Count byte 1 run scoreboard players get @s CraftSlot6

execute if data storage blue:crafting TakeItems[{Slot:20b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot4
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 5 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot5
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 6 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot6
execute if data storage blue:crafting TakeItems[{Slot:20b}].Count if score Current CraftFilledSlots matches 7 store result storage blue:crafting TakeItems[{Slot:20b}].Count byte 1 run scoreboard players get @s CraftSlot7

execute if data storage blue:crafting TakeItems[{Slot:21b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot4
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 5 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot5
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 6 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot6
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 7 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot7
execute if data storage blue:crafting TakeItems[{Slot:21b}].Count if score Current CraftFilledSlots matches 8 store result storage blue:crafting TakeItems[{Slot:21b}].Count byte 1 run scoreboard players get @s CraftSlot8

execute if data storage blue:crafting TakeItems[{Slot:22b}].Count run scoreboard players add Current CraftFilledSlots 1
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 1 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot1
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 2 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot2
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 3 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot3
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 4 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot4
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 5 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot5
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 6 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot6
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 7 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot7
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 8 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot8
execute if data storage blue:crafting TakeItems[{Slot:22b}].Count if score Current CraftFilledSlots matches 9 store result storage blue:crafting TakeItems[{Slot:22b}].Count byte 1 run scoreboard players get @s CraftSlot9

data modify entity @s Items set from storage blue:crafting TakeItems