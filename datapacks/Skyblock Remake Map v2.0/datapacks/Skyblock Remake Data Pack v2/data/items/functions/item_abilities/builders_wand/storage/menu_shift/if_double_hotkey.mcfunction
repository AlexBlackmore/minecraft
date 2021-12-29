execute at @p run summon item ~ ~ ~ {Tags:["temp3"],PickupDelay:0s,Item:{Count:1b,id:"minecraft:barrier",tag:{temp3:1b}}}
data modify entity @e[nbt={Item:{tag:{temp3:1b}}},limit=1] Item set from entity @p SelectedItem
item replace entity @p weapon.mainhand with air