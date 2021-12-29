#Check If Player Is Moving
execute if entity @s[nbt={SelectedItem:{tag:{builder:1b}}},x_rotation=-90..-80] run function items:item_abilities/builders_wand/storage/move

#Add sameID tag so you don't need to repeat the ID comparison code
execute as @e[tag=builder_storage,distance=..10,sort=nearest] if score @s I_BWandID = @p I_BWandID run tag @s add sameID

#Get current MenuItem ID
execute store result score @s I_BWandID run data get entity @s SelectedItem.tag.ID

#Stores a thrown MenuItem's ID
execute if entity @s[tag=HeldLastTick] as @e[tag=builder_storage,distance=..10,sort=nearest,tag=sameID] at @s as @e[nbt={Item:{tag:{builder:1b}}},type=item,distance=..1] store result score @s I_BWandID run data get entity @s Item.tag.ID

#If the menu has a MenuItem in it then it runs the menushiftcheck
execute as @e[tag=builder_storage,distance=..10,sort=nearest,tag=sameID,nbt={Items:[{tag:{builder:1b}}]}] run function items:item_abilities/builders_wand/storage/storage_manipulation/menushiftcheck

#If the player held a MenuItem Last Tick AND they don't hold A Menu Item Now AND a thrown MenuItem's ID matches the Menu ID then run function itemtest
execute if entity @s[tag=HeldLastTick,nbt=!{SelectedItem:{tag:{builder:1b}}}] as @e[tag=builder_storage,distance=..10,sort=nearest,tag=sameID] at @s as @e[nbt={Item:{tag:{builder:1b}}},type=item,distance=..1] if score @s I_BWandID = @e[tag=builder_storage,distance=..10,limit=1,sort=nearest] I_BWandID as @e[tag=builder_storage,distance=..10,limit=1,sort=nearest] at @s run function items:item_abilities/builders_wand/storage/storage_manipulation/itemtest

#If the player held a MenuItem Last Tick and the ID of the Menu doesn't match teh ID of the player(The selectedItemID) run function invtest
execute if entity @s[tag=HeldLastTick] as @e[tag=builder_storage,distance=..10,sort=nearest,tag=sameID] unless score @s I_BWandID = @p I_BWandID run function items:item_abilities/builders_wand/storage/storage_manipulation/invtest

#If the player held a MenuItem Last Tick, didn't move last tick, moved this tick, is holding a Menu Item, and the Menu Item ID matches the Menu's ID then it runs the function store
execute if entity @s[tag=HeldLastTick,tag=nomovelast,tag=move,nbt={SelectedItem:{tag:{builder:1b}}}] as @e[tag=builder_storage,distance=..10,sort=nearest] if score @s I_BWandID = @p I_BWandID at @s run function items:item_abilities/builders_wand/storage/storage_manipulation/store

#If the player held a MenuItem Last Tick, is not looking up, is holding a Menu Item, and the Menu Item ID matches the Menu's ID then it runs the function store
execute if entity @s[tag=HeldLastTick,nbt={SelectedItem:{tag:{builder:1b}}},x_rotation=-80..] as @e[tag=builder_storage,distance=..10,sort=nearest] if score @s I_BWandID = @p I_BWandID at @s run function items:item_abilities/builders_wand/storage/storage_manipulation/store


#If the player DIDN'T hold a MenuItem Last Tick, is holding it now, and meets the criteria, then it runs the function newmenu
execute if entity @s[tag=!HeldLastTick,nbt={SelectedItem:{tag:{builder:1b}}},x_rotation=-90..-80] run function items:item_abilities/builders_wand/storage/newmenu

#If the player is holding a MenuItem, and meets the criteria, and there isn't already a menu, then it runs the function newmenu
execute if entity @s[nbt={SelectedItem:{tag:{builder:1b}}},x_rotation=-90..-80] unless entity @e[tag=builder_storage,distance=..2] run function items:item_abilities/builders_wand/storage/newmenu


#Remove HeldLastTick Tag
tag @s[tag=HeldLastTick] remove HeldLastTick

#Reapply HeldLastTick Tag if they meet the criteria for having the menu open.
tag @s[nbt={SelectedItem:{tag:{builder:1b}}},x_rotation=-90..-80] add HeldLastTick


#Teleport menu
execute at @s[tag=HeldLastTick] positioned ~ ~1.6 ~ run tp @e[tag=builder_storage,distance=..6.5,limit=1,sort=nearest] ~ ~ ~

#Unless there is a Player that meets the menu criteria within 2 blocks, kill the menu(This is after it should be teleported to the player)
execute as @e[tag=builder_storage] unless entity @a[tag=HeldLastTick,distance=..2] run tp @s ~ ~-1000000 ~



#Remove sameID tag(Its only in this function)
tag @e[tag=sameID] remove sameID

#Remove the tag
tag @s[tag=nomovelast] remove nomovelast

#Add tag if the player hasn't moved this tick
tag @s[tag=!move] add nomovelast