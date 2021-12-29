execute in minecraft:overworld run setblock 29999977 2 29832 minecraft:shulker_box
data modify storage blue:tag Inventory insert 0 from entity @s SelectedItem
data modify storage blue:tag Inventory[].Slot set value 0b
data remove storage blue:tag Inventory[].tag.Location
data remove storage blue:tag Inventory[].tag.CanDestroy