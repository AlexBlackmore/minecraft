execute as @p if predicate personal_compactors:pcompactor_4000 in minecraft:overworld run loot replace block 29999980 1 29832 container.0 loot personal_compactors:give/personal_compactor_4000
execute as @p if predicate personal_compactors:pcompactor_5000 in minecraft:overworld run loot replace block 29999980 1 29832 container.0 loot personal_compactors:give/personal_compactor_5000
execute as @p if predicate personal_compactors:pcompactor_6000 in minecraft:overworld run loot replace block 29999980 1 29832 container.0 loot personal_compactors:give/personal_compactor_6000
execute as @p if predicate personal_compactors:pcompactor_7000 in minecraft:overworld run loot replace block 29999980 1 29832 container.0 loot personal_compactors:give/personal_compactor_7000

execute in minecraft:overworld run data remove block 29999980 1 29832 Items[{Slot:0b}].tag.Items
execute in minecraft:overworld run data modify block 29999980 1 29832 Items[{Slot:0b}].tag.Items set from entity @s Items
execute as @p if predicate personal_compactors:pcompactor_4000 as @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor] in minecraft:overworld run function personal_compactors:holding/update_item/p4000
execute as @p if predicate personal_compactors:pcompactor_5000 as @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor] in minecraft:overworld run function personal_compactors:holding/update_item/p5000
execute as @p if predicate personal_compactors:pcompactor_6000 as @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor] in minecraft:overworld run function personal_compactors:holding/update_item/p6000
execute as @p if predicate personal_compactors:pcompactor_7000 as @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor] in minecraft:overworld run function personal_compactors:holding/update_item/p7000

execute as @p in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999980 1 29832 diamond_pickaxe{drop_contents:true}
execute in minecraft:overworld run data remove block 29999980 1 29832 Items