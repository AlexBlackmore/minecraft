scoreboard players operation $Build_CountTemp I_BWBlank_Score = $Build_Count I_BWBlank_Score
execute in minecraft:overworld run setblock 29999977 1 29832 air
execute in minecraft:overworld run setblock 29999977 1 29832 shulker_box{Items:[{Slot:0b,id:"minecraft:scute",Count:1b,tag:{SkyblockMenu:1b}}]}
execute as @p in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:9b}].id
execute as @p in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:9b}].Count
execute as @p in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:9b}].tag
scoreboard players operation $Build_Count I_BWBlank_Score -= $CountSlot9 I_BWBlank_Score2
execute if score $Build_Count I_BWBlank_Score matches ..-1 run scoreboard players set $Build_Count I_BWBlank_Score 0
scoreboard players operation $CountSlot9 I_BWBlank_Score2 -= $Build_CountTemp I_BWBlank_Score
item replace entity @s inventory.0 with air
execute in minecraft:overworld store result block 29999977 1 29832 Items[{Slot:0b}].Count int 1 run scoreboard players get $CountSlot9 I_BWBlank_Score2
execute as @p in minecraft:overworld run loot replace entity @s inventory.0 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
scoreboard players set $CountSlot9 I_BWBlank_Score -1
scoreboard players set $CountSlot9 I_BWBlank_Score2 0