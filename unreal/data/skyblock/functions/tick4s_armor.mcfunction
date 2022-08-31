#Regeneration
effect give @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Ghast Head"}}]}] regeneration 15 0

execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Vampire Mask"}}]}] at @s if entity @e[type=#minecraft:monster,distance=0..8] run effect give @s regeneration 15 2
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Vampire Mask"}}]}] at @s if entity @e[type=#minecraft:monster,distance=0..8] run effect give @e[type=#minecraft:monster,distance=0..8] poison 15 1

execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Vampire Witch Mask"}}]}] at @s if entity @e[type=#minecraft:monster,distance=0..8] run effect give @s regeneration 15 2
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Vampire Witch Mask"}}]}] at @s if entity @e[type=#minecraft:monster,distance=0..8] run effect give @e[type=#minecraft:monster,distance=0..8] poison 15 1

execute as @a[nbt={Inventory:[{Slot:102b,tag:{Name:"Mithril Coat"}}]}] run function skyblock:abilities/ambient/mithril_protection

#Jump Boost
effect give @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Rabbit Hat"}}]}] jump_boost 15 3

#Resistance
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] run function skyblock:abilities/ambient/skeletons_helmet
execute as @a[nbt={Inventory:[{Slot:102b,tag:{Name:"Guardian Chestplate"}}]}] run function skyblock:abilities/ambient/block_damage

#Haste
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Ember Ash Helmet"}},{Slot:102b,tag:{Name:"Ember Ash Chestplate"}},{Slot:101b,tag:{Name:"Ember Ash Leggings"}},{Slot:100b,tag:{Name:"Ember Ash Boots"}}]}] run effect give @s haste 15 2
