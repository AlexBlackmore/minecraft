scoreboard objectives add multiplier dummy "Multiplier"

scoreboard players set @s crit_chance 0
scoreboard players set @s dummy 0
scoreboard players set @s multiplier 0

#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.CritChance store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.CritChance store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.CritChance store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.CritChance store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.CritChance store result score @s dummy run data get entity @s SelectedItem.tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.CritChance store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.CritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0


scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Superior Dragon Boots"}},{Slot:101b,tag:{Name:"Superior Dragon Leggings"}},{Slot:102b,tag:{Name:"Superior Dragon Chestplate"}},{Slot:103b,tag:{Name:"Superior Dragon Helmet"}}]}] multiplier 5


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeCritChance store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeCritChance store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeCritChance store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeCritChance store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeCritChance store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeCritChance store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeCritChance
scoreboard players operation @s crit_chance += @s dummy
scoreboard players set @s dummy 0


#Enchantments
execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:overload"}].lvl
scoreboard players operation @s crit_chance += @s dummy


#Critical Potion
scoreboard players set @s dummy 5
scoreboard players operation @s dummy *= @s critical_amplifier
scoreboard players add @s dummy 10
scoreboard players operation @s[scores={critical_duration=1..}] crit_chance += @s dummy



#Trinkets
scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Big Teeth"}}]}] dummy 5
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Bigger Teeth"}}]}] dummy 10
scoreboard players operation @s crit_chance += @s dummy

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Iron Claws"}}]}] dummy 40
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Gold Claws"}}]}] dummy 50
scoreboard players operation @s crit_chance += @s dummy

scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Minos Relic"}}]}] multiplier 33

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon I"}}]}] dummy 1
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon II"}}]}] dummy 2
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon III"}}]}] dummy 3
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon IV"}}]}] dummy 4
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon V"}}]}] dummy 5
scoreboard players operation @s crit_chance += @s dummy



scoreboard players set @s dummy 100
scoreboard players operation @s crit_chance *= @s dummy
scoreboard players operation @s crit_chance *= @s multiplier
scoreboard players operation @s crit_chance /= @s dummy

scoreboard players set @s dummy 4
scoreboard players operation @s[nbt={SelectedItem:{tag:{Name:"Terminator"}}}] crit_chance /= @s dummy


scoreboard objectives remove level
scoreboard objectives remove multiplier
scoreboard objectives remove random