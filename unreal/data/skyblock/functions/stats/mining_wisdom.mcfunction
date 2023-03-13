scoreboard players set @s mining_wisdom 0
scoreboard players set @s dummy 0


#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.MiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.MiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.MiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.MiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.MiningWisdom store result score @s dummy run data get entity @s SelectedItem.tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.MiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.MiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeMiningWisdom
scoreboard players operation @s mining_wisdom += @s dummy
scoreboard players set @s dummy 0


#Silverfish Pet
scoreboard objectives add level dummy "Level"
execute store result score @s level run data get entity @s XpLevel 100
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={skyblock:pets/silverfish/rare=true}] dummy 25
scoreboard players set @s[advancements={skyblock:pets/silverfish/epic=true}] dummy 30
scoreboard players set @s[advancements={skyblock:pets/silverfish/legendary=true}] dummy 30

scoreboard players operation @s level *= @s dummy
scoreboard players set @s dummy 100
scoreboard players operation @s level /= @s dummy

scoreboard players operation @s mining_wisdom += @s level


#Compact
scoreboard players set @s level 0
execute store result score @s level run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:compact"}].lvl

scoreboard players operation @s mining_wisdom += @s level


#Booster Cookie 
scoreboard players add @s[scores={booster_cookie_duration=1..}] mining_wisdom 25


#Wisdom Potion
scoreboard players set @s dummy 0
scoreboard players set @s[scores={mining_wisdom_amplifier=0,mining_wisdom_duration=1..}] dummy 5
scoreboard players set @s[scores={mining_wisdom_amplifier=1,mining_wisdom_duration=1..}] dummy 10
scoreboard players set @s[scores={mining_wisdom_amplifier=2,mining_wisdom_duration=1..}] dummy 20
scoreboard players operation @s mining_wisdom += @s dummy


#Mayors
scoreboard players add @s[advancements={skyblock:events/election/cole=true}] mining_wisdom 50
scoreboard players add @s[advancements={skyblock:events/election/special/derpy=true}] mining_wisdom 50
scoreboard players add @s[advancements={skyblock:events/mining_fiesta=true}] mining_wisdom 75


#Trinkets
scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Boost"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Super-Boost"}}]}] dummy 20
scoreboard players operation @s mining_wisdom += @s dummy

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Common"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Uncommon"}}]}] dummy 30
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Rare"}}]}] dummy 40
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Epic"}}]}] dummy 50
scoreboard players operation @s mining_wisdom += @s dummy

scoreboard objectives remove level
scoreboard objectives remove random