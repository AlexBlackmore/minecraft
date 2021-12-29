function enchanting:enchants/telekinesis/items

scoreboard players set Global TelekinesisXP 0
execute as @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10] store result score @s TelekinesisXP run data get entity @s Value
execute as @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10] run scoreboard players operation Global TelekinesisXP += @s TelekinesisXP
execute if data entity @s {SelectedItem:{tag:{Base:{Type:"SWORD"}}}} run kill @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10]
execute if score Global TelekinesisXP matches 8.. if data entity @s {SelectedItem:{tag:{Base:{Type:"SWORD"}}}} run function enchanting:xp/add/8
execute if score Global TelekinesisXP matches 4.. if data entity @s {SelectedItem:{tag:{Base:{Type:"SWORD"}}}} run function enchanting:xp/add/4
execute if score Global TelekinesisXP matches 1.. if data entity @s {SelectedItem:{tag:{Base:{Type:"SWORD"}}}} run function enchanting:xp/add/1