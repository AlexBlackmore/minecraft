execute if score $Slot29 I_BWBlank_Score = @s I_BWandID as @p in minecraft:overworld run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{temp:1b}}}] Item set from entity @s Inventory[{Slot:29b}]
execute in minecraft:overworld as @e[type=item,limit=1,sort=nearest,tag=temp] run data modify block 29999977 1 29832 Items[{Slot:0b}] set from entity @s Item
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.store set from entity @s Items
execute if score $Slot29 I_BWBlank_Score = @s I_BWandID as @p in minecraft:overworld run loot replace entity @s inventory.20 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}