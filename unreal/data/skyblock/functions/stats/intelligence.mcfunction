scoreboard objectives add multiplier dummy "Multiplier"

scoreboard players set @s intelligence 0
scoreboard players set @s dummy 0
scoreboard players set @s multiplier 0

#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.Intelligence store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.Intelligence store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.Intelligence store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.Intelligence store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.Intelligence store result score @s dummy run data get entity @s SelectedItem.tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.Intelligence store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.Intelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0


scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Superior Dragon Boots"}},{Slot:101b,tag:{Name:"Superior Dragon Leggings"}},{Slot:102b,tag:{Name:"Superior Dragon Chestplate"}},{Slot:103b,tag:{Name:"Superior Dragon Helmet"}}]}] multiplier 5


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeIntelligence store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeIntelligence store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeIntelligence store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeIntelligence store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeIntelligence store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeIntelligence store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeIntelligence
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0


#Enchantments
execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CustomEnchantments[{id:"skyblock:big_brain"}].lvl 5
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CustomEnchantments[{id:"skyblock:smarty_pants"}].lvl 5
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0


execute store result score @s level run data get entity @s XpLevel 0.2
execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.UltimateEnchantment{id:"skyblock:wisdom"}.lvl
scoreboard players operation @s dummy *= @s level
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.UltimateEnchantment{id:"skyblock:wisdom"}.lvl
scoreboard players operation @s dummy *= @s level
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.UltimateEnchantment{id:"skyblock:wisdom"}.lvl
scoreboard players operation @s dummy *= @s level
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0

execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.UltimateEnchantment{id:"skyblock:wisdom"}.lvl
scoreboard players operation @s dummy *= @s level
scoreboard players operation @s intelligence += @s dummy
scoreboard players set @s dummy 0


#Jerry Candy 
scoreboard players add @s[scores={jerry_candy_duration=1..}] intelligence 100


#Mayors
scoreboard players add @s[advancements={skyblock:events/election/special/jerry=true}] multiplier 10



#Accessories
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={accessories/bat_talisman=true}] dummy 1
scoreboard players set @s[advancements={accessories/bat_ring=true}] dummy 3
scoreboard players set @s[advancements={accessories/bat_artifact=true}] dummy 5
scoreboard players operation @s crit_damage += @s dummy

scoreboard players add @s[advancements={accessories/melodys_hair=true}] intelligence 6


#Trinkets
scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Minos Relic"}}]}] multiplier 33
scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Textbook"}}]}] multiplier 100

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon I"}}]}] dummy 5
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon II"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon III"}}]}] dummy 15
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon IV"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Beacon V"}}]}] dummy 25
scoreboard players operation @s intelligence += @s dummy


scoreboard players set @s dummy 100
scoreboard players operation @s intelligence *= @s dummy
scoreboard players operation @s intelligence *= @s multiplier
scoreboard players operation @s intelligence /= @s dummy



scoreboard objectives remove level
scoreboard objectives remove multiplier
scoreboard objectives remove random