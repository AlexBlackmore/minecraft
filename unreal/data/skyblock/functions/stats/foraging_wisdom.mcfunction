scoreboard players set @s foraging_wisdom 0
scoreboard players set @s dummy 0


#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.ForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ForagingWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeForagingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeForagingWisdom
scoreboard players operation @s foraging_wisdom += @s dummy
scoreboard players set @s dummy 0



#Ocelot Pet
scoreboard objectives add level dummy "Level"
execute store result score @s level run data get entity @s XpLevel 10
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={skyblock:pets/ocelot/epic=true}] dummy 2
scoreboard players set @s[advancements={skyblock:pets/ocelot/legendary=true}] dummy 3

scoreboard players operation @s level *= @s dummy
scoreboard players set @s dummy 10
scoreboard players operation @s level /= @s dummy

scoreboard players operation @s foraging_wisdom += @s level


#Booster Cookie 
scoreboard players add @s[scores={booster_cookie_duration=1..}] foraging_wisdom 25


#Wisdom Potion
scoreboard players set @s dummy 0
scoreboard players set @s[scores={foraging_wisdom_amplifier=0,foraging_wisdom_duration=1..}] dummy 5
scoreboard players set @s[scores={foraging_wisdom_amplifier=1,foraging_wisdom_duration=1..}] dummy 10
scoreboard players set @s[scores={foraging_wisdom_amplifier=2,foraging_wisdom_duration=1..}] dummy 20
scoreboard players operation @s foraging_wisdom += @s dummy


#Mayors
scoreboard players add @s[advancements={skyblock:events/election/special/derpy=true}] foraging_wisdom 50


#Trinkets
scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Boost"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Super-Boost"}}]}] dummy 20
scoreboard players operation @s foraging_wisdom += @s dummy

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Foraging Exp Boost Common"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Foraging Exp Boost Uncommon"}}]}] dummy 30
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Foraging Exp Boost Rare"}}]}] dummy 40
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Foraging Exp Boost Epic"}}]}] dummy 50
scoreboard players operation @s foraging_wisdom += @s dummy

scoreboard objectives remove level
scoreboard objectives remove random