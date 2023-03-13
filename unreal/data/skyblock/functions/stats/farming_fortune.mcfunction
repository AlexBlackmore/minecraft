scoreboard objectives add multiplier dummy "Multiplier"

scoreboard players set @s farming_fortune 0
scoreboard players set @s dummy 0
scoreboard players set @s multiplier 0

#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.FarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.FarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.FarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.FarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.FarmingFortune store result score @s dummy run data get entity @s SelectedItem.tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.FarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.FarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0


scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Superior Dragon Boots"}},{Slot:101b,tag:{Name:"Superior Dragon Leggings"}},{Slot:102b,tag:{Name:"Superior Dragon Chestplate"}},{Slot:103b,tag:{Name:"Superior Dragon Helmet"}}]}] multiplier 5
scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Rabbit Boots"}},{Slot:101b,tag:{Name:"Rabbit Leggings"}},{Slot:102b,tag:{Name:"Rabbit Chestplate"}},{Slot:103b,tag:{Name:"Rabbit Helmet"}}]}] farming_fortune 10


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeFarmingFortune store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeFarmingFortune
scoreboard players operation @s farming_fortune += @s dummy
scoreboard players set @s dummy 0


#Enchantments
execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:harvesting"}].lvl 12
scoreboard players operation @s farming_fortune += @s dummy

execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:sunder"}].lvl 12
scoreboard players operation @s farming_fortune += @s dummy

execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:cultivating"}].lvl
scoreboard players operation @s farming_fortune += @s dummy



#Trinkets
scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Minos Relic"}}]}] multiplier 33



scoreboard players set @s dummy 100
scoreboard players operation @s farming_fortune *= @s dummy
scoreboard players operation @s farming_fortune *= @s multiplier
scoreboard players operation @s farming_fortune /= @s dummy



scoreboard objectives remove level
scoreboard objectives remove multiplier
scoreboard objectives remove random