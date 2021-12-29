execute in minecraft:overworld run setblock 29999977 3 29832 minecraft:shulker_box
data modify storage blue:remove_tag Inventory insert 0 from entity @s SelectedItem
data modify storage blue:remove_tag Inventory[].Slot set value 0b
data remove storage blue:remove_tag Inventory[].tag.CanDestroy
execute in minecraft:overworld run data modify block 29999977 3 29832 Items insert 0 from storage blue:remove_tag Inventory[]
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999977 3 29832 diamond_pickaxe{drop_contents:true}
execute in minecraft:overworld run setblock 29999977 3 29832 air
data remove storage blue:remove_tag Inventory
