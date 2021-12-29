#Set Shulker Box to Item
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}] set from entity @s Item
#Based off of slot set player slot to Item
execute if entity @s[tag=NOID0] if entity @p[nbt={SelectedItemSlot:0}] run tag @s add nokill
execute if entity @s[tag=NOID1] if entity @p[nbt={SelectedItemSlot:1}] run tag @s add nokill
execute if entity @s[tag=NOID2] if entity @p[nbt={SelectedItemSlot:2}] run tag @s add nokill
execute if entity @s[tag=NOID3] if entity @p[nbt={SelectedItemSlot:3}] run tag @s add nokill
execute if entity @s[tag=NOID4] if entity @p[nbt={SelectedItemSlot:4}] run tag @s add nokill
execute if entity @s[tag=NOID5] if entity @p[nbt={SelectedItemSlot:5}] run tag @s add nokill
execute if entity @s[tag=NOID6] if entity @p[nbt={SelectedItemSlot:6}] run tag @s add nokill
execute if entity @s[tag=NOID7] if entity @p[nbt={SelectedItemSlot:7}] run tag @s add nokill
execute if entity @s[tag=NOID8] if entity @p[nbt={SelectedItemSlot:8}] run tag @s add nokill
execute if entity @s[tag=NOID0] unless entity @p[nbt={SelectedItemSlot:0}] as @p in minecraft:overworld run loot replace entity @s hotbar.0 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID1] unless entity @p[nbt={SelectedItemSlot:1}] as @p in minecraft:overworld run loot replace entity @s hotbar.1 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID2] unless entity @p[nbt={SelectedItemSlot:2}] as @p in minecraft:overworld run loot replace entity @s hotbar.2 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID3] unless entity @p[nbt={SelectedItemSlot:3}] as @p in minecraft:overworld run loot replace entity @s hotbar.3 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID4] unless entity @p[nbt={SelectedItemSlot:4}] as @p in minecraft:overworld run loot replace entity @s hotbar.4 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID5] unless entity @p[nbt={SelectedItemSlot:5}] as @p in minecraft:overworld run loot replace entity @s hotbar.5 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID6] unless entity @p[nbt={SelectedItemSlot:6}] as @p in minecraft:overworld run loot replace entity @s hotbar.6 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID7] unless entity @p[nbt={SelectedItemSlot:7}] as @p in minecraft:overworld run loot replace entity @s hotbar.7 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID8] unless entity @p[nbt={SelectedItemSlot:8}] as @p in minecraft:overworld run loot replace entity @s hotbar.8 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID9] as @p in minecraft:overworld run loot replace entity @s inventory.0 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID10] as @p in minecraft:overworld run loot replace entity @s inventory.1 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID11] as @p in minecraft:overworld run loot replace entity @s inventory.2 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID12] as @p in minecraft:overworld run loot replace entity @s inventory.3 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID13] as @p in minecraft:overworld run loot replace entity @s inventory.4 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID14] as @p in minecraft:overworld run loot replace entity @s inventory.5 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID15] as @p in minecraft:overworld run loot replace entity @s inventory.6 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID16] as @p in minecraft:overworld run loot replace entity @s inventory.7 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID17] as @p in minecraft:overworld run loot replace entity @s inventory.8 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID18] as @p in minecraft:overworld run loot replace entity @s inventory.9 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID19] as @p in minecraft:overworld run loot replace entity @s inventory.10 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID20] as @p in minecraft:overworld run loot replace entity @s inventory.11 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID21] as @p in minecraft:overworld run loot replace entity @s inventory.12 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID22] as @p in minecraft:overworld run loot replace entity @s inventory.13 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID23] as @p in minecraft:overworld run loot replace entity @s inventory.14 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID24] as @p in minecraft:overworld run loot replace entity @s inventory.15 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID25] as @p in minecraft:overworld run loot replace entity @s inventory.16 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID26] as @p in minecraft:overworld run loot replace entity @s inventory.17 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID27] as @p in minecraft:overworld run loot replace entity @s inventory.18 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID28] as @p in minecraft:overworld run loot replace entity @s inventory.19 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID29] as @p in minecraft:overworld run loot replace entity @s inventory.20 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID30] as @p in minecraft:overworld run loot replace entity @s inventory.21 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID31] as @p in minecraft:overworld run loot replace entity @s inventory.22 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID32] as @p in minecraft:overworld run loot replace entity @s inventory.23 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID33] as @p in minecraft:overworld run loot replace entity @s inventory.24 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID34] as @p in minecraft:overworld run loot replace entity @s inventory.25 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID35] as @p in minecraft:overworld run loot replace entity @s inventory.26 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if entity @s[tag=NOID36] as @p in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
#Kill Item
kill @s[tag=!nokill]