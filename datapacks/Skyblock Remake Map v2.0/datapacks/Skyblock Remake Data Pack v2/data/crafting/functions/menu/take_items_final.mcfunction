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

execute if data storage blue:crafting TakeItems[{Slot:2b}].Count run function crafting:menu/take_items_final/slot2b

execute if data storage blue:crafting TakeItems[{Slot:3b}].Count run function crafting:menu/take_items_final/slot3b

execute if data storage blue:crafting TakeItems[{Slot:4b}].Count run function crafting:menu/take_items_final/slot4b

execute if data storage blue:crafting TakeItems[{Slot:11b}].Count run function crafting:menu/take_items_final/slot11b

execute if data storage blue:crafting TakeItems[{Slot:12b}].Count run function crafting:menu/take_items_final/slot12b

execute if data storage blue:crafting TakeItems[{Slot:13b}].Count run function crafting:menu/take_items_final/slot13b

execute if data storage blue:crafting TakeItems[{Slot:20b}].Count run function crafting:menu/take_items_final/slot20b

execute if data storage blue:crafting TakeItems[{Slot:21b}].Count run function crafting:menu/take_items_final/slot21b

execute if data storage blue:crafting TakeItems[{Slot:22b}].Count run function crafting:menu/take_items_final/slot22b

data modify entity @s Items set from storage blue:crafting TakeItems