execute if score $Slot9 I_BWBlank_Score = @s I_BWandID as @p in minecraft:overworld run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{temp:1b}}}] Item set from entity @s Inventory[{Slot:9b}]
execute in minecraft:overworld as @e[type=item,limit=1,sort=nearest,tag=temp] run data modify block 29999977 1 29832 Items[{Slot:0b}] set from entity @s Item
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.store set from entity @s Items
execute if score $Slot9 I_BWBlank_Score = @s I_BWandID as @p in minecraft:overworld run loot replace entity @s inventory.0 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
execute if score $Slot9 I_BWBlank_Score = @s I_BWandID run say hi
#tellraw @p ["",{"text":"MYID: "},{"score":{"name":"@s","objective":"I_BWandID"}}]
#tellraw @p ["",{"text":"SLOTID: "},{"score":{"name":"$Slot9","objective":"I_BWBlank_Score"}}]
#say run
