execute as @p if predicate backpacks:large_backpack in minecraft:overworld run function backpacks:holding/single_page/update_item/large
execute as @p if predicate backpacks:medium_backpack in minecraft:overworld run function backpacks:holding/single_page/update_item/medium
execute as @p if predicate backpacks:small_backpack in minecraft:overworld run function backpacks:holding/single_page/update_item/small

execute in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items
execute in minecraft:overworld run data modify block 29999980 1 29832 Items[{Slot:0b}].tag.Items set from entity @s Items
execute as @p in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999980 1 29832 diamond_pickaxe{drop_contents:true}
execute in minecraft:overworld run data remove block 29999980 1 29832 Items