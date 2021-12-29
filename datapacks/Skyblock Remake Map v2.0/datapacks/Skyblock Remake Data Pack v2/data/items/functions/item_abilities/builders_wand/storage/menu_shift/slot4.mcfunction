execute in minecraft:overworld run summon item 29999977 1 29832 {Tags:["tempall"],PickupDelay:0s,Item:{Count:1b,id:"minecraft:barrier",tag:{temp:1b}}}
execute in minecraft:overworld run summon item 29999977 1 29832 {Tags:["tempall"],PickupDelay:0s,Item:{Count:1b,id:"minecraft:barrier",tag:{temp2:1b}}}
tag @e[nbt={Item:{tag:{temp:1b}}}] add temp
tag @e[nbt={Item:{tag:{temp2:1b}}}] add temp2
execute if score $Slot3 I_BWBlank_Score matches 1.. in minecraft:overworld positioned 29999977 1 29832 run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{temp:1b}}}] Item set from entity @s Items[{Slot:3b}]
execute if score $Slot3 I_BWBlank_Score matches 1.. unless score $Slot3 I_BWBlank_Score = @s I_BWandID run tp @e[tag=temp,limit=1] @p
execute if score $Slot3 I_BWBlank_Score matches 1.. unless score $Slot3 I_BWBlank_Score = @s I_BWandID run tag @e[tag=temp] remove temp
execute if score $Slot3 I_BWBlank_Score matches 1.. run data remove entity @s Items[{Slot:3b}]
execute in minecraft:overworld as @e[type=item,limit=1,sort=nearest,tag=temp] run data modify block 29999977 1 29832 Items[{Slot:0b}] set from entity @s Item
execute if score $Slot3 I_BWBlank_Score = @s I_BWandID in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.store set from entity @s Items
execute if score @p I_BWandID matches 0 if entity @p[nbt={SelectedItem:{}}] run data modify entity @e[tag=temp2,limit=1] Item set from entity @p SelectedItem
execute if score @p I_BWandID matches 0 if entity @p[nbt={SelectedItem:{}}] run tp @e[tag=temp2,limit=1] @p
execute if score @p I_BWandID matches 0 if entity @p[nbt={SelectedItem:{}}] run tag @e[tag=temp2] remove temp2
execute if score $Slot3 I_BWBlank_Score = @s I_BWandID if score @p I_BWandID matches 1.. if entity @p[nbt={SelectedItem:{}}] run function items:item_abilities/builders_wand/storage/menu_shift/if_double_hotkey
execute if score $Slot3 I_BWBlank_Score = @s I_BWandID as @p in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}

kill @e[tag=temp]
kill @e[tag=temp2]