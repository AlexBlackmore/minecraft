execute as @p if predicate backpacks:greater_backpack in minecraft:overworld run function backpacks:holding/multiple_page/update_item/greater
execute as @p if predicate backpacks:jumbo_backpack in minecraft:overworld run function backpacks:holding/multiple_page/update_item/jumbo

execute in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items[{tag:{LockedSlot:1b}}]
execute if data entity @p SelectedItem.tag.Items.Page1.[] in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items.Page1
execute if data entity @p SelectedItem.tag.Items.Page2.[] in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items.Page2
execute if data entity @p SelectedItem.tag.Items.Page3.[] in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items.Page3
execute if score @p backpacks.currpg matches 1 run function backpacks:holding/multiple_page/update_item/page1
execute if score @p backpacks.currpg matches 2 run function backpacks:holding/multiple_page/update_item/page2
execute if score @p backpacks.currpg matches 3 run function backpacks:holding/multiple_page/update_item/page3
execute as @p in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999980 1 29832 diamond_pickaxe{drop_contents:true}
execute in minecraft:overworld run data remove block 29999980 1 29832 Items