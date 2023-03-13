scoreboard objectives add multiplier dummy "Multiplier"

scoreboard players set @s mining_fortune 0
scoreboard players set @s dummy 0
scoreboard players set @s multiplier 0

#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.MiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.MiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.MiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.MiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.MiningFortune store result score @s dummy run data get entity @s SelectedItem.tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.MiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.MiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0


scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Superior Dragon Boots"}},{Slot:101b,tag:{Name:"Superior Dragon Leggings"}},{Slot:102b,tag:{Name:"Superior Dragon Chestplate"}},{Slot:103b,tag:{Name:"Superior Dragon Helmet"}}]}] multiplier 5


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeMiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeMiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeMiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeMiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeMiningFortune store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeMiningFortune store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeMiningFortune
scoreboard players operation @s mining_fortune += @s dummy
scoreboard players set @s dummy 0


#Potion
scoreboard players set @s dummy 5
scoreboard players operation @s dummy *= @s spelunker_amplifier
scoreboard players add @s dummy 5
scoreboard players operation @s[scores={spelunker_duration=1..}] mining_fortune += @s dummy


#Accessories
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={accessories/mineral_talisman=true}] dummy 3
scoreboard players operation @s mining_fortune += @s dummy


#Trinkets
scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Minos Relic"}}]}] multiplier 33

execute store result score @s dummy run data get entity @s XpLevel 0.5
scoreboard players operation @s[nbt={Inventory:[{tag:{Name:"Quick Claw"}}]}] mining_fortune += @s dummy
scoreboard players set @s dummy 0


scoreboard players set @s dummy 100
scoreboard players operation @s level = @s mining_fortune
scoreboard players operation @s level *= @s dummy
scoreboard players operation @s level *= @s multiplier
scoreboard players operation @s level /= @s dummy
scoreboard players operation @s mining_fortune += @s level


scoreboard objectives remove level
scoreboard objectives remove multiplier
scoreboard objectives remove random