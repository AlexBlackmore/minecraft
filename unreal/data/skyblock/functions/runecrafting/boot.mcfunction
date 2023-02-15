#Hot
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Hot"}}]}] run particle minecraft:dripping_lava ~ ~ ~ 0.2 0 0.2 0 2 normal

#Couture
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Couture"}}]}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.03 3 normal

#Snake
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Snake"}}]}] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 2 normal

#Endersnake
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Endersnake"}}]}] run particle minecraft:witch ~ ~ ~ 0 0 0 0 2 normal

#Tidal
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Tidal"}}]}] run particle minecraft:dripping_water ~ ~ ~ 0 0 0 2 2 normal

#Clouds
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Clouds"}}]}] run particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0 1 normal

#Sparkling
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Sparkling"}}]}] run particle minecraft:electric_spark ~ ~ ~ 0.2 0 0.2 0 2 normal

#Zap
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Zap"}}]}] run particle minecraft:falling_dust minecraft:yellow_wool ~ ~ ~ 0.2 0 0.2 0 1 normal

#Redstone
execute at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Redstone"}}]}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 0 1 normal

#Rainbow
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{Rune:"Rainbow"}}]}] run function skyblock:runecrafting/rainbow
