#Set Shulker Box To Temp Item
execute in minecraft:overworld run setblock 29999977 1 29832 air
execute in minecraft:overworld run setblock 29999977 1 29832 shulker_box{Items:[{Slot:0b,id:"minecraft:scute",Count:1b,tag:{SkyblockMenu:1b}}]}
execute as @p in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}].id set from entity @s SelectedItem.id
execute as @p in minecraft:overworld run data modify block 29999977 1 29832 Items[{Slot:0b}].tag set from entity @s SelectedItem.tag
#Set Item In Shulker Box Tag To Minecart Storage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.store set from entity @s Items
#Set Selected Item To Shulker Box Slot 0b
execute as @p in minecraft:overworld run loot replace entity @s weapon 1 mine 29999977 1 29832 minecraft:golden_pickaxe{drop_contents:1b}
#Summon New Menu
execute as @p at @s run function items:item_abilities/builders_wand/storage/newmenu