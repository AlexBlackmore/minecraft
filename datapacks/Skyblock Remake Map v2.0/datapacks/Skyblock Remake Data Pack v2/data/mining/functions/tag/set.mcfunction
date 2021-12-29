execute in minecraft:overworld run data modify block 29999977 2 29832 Items insert 0 from storage blue:tag Inventory[]
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999977 2 29832 stick{drop_contents:true}
execute in minecraft:overworld run setblock 29999977 2 29832 air
data remove storage blue:tag Inventory