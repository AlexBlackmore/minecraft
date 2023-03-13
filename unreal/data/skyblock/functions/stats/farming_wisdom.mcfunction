scoreboard players set @s farming_wisdom 0
scoreboard players set @s dummy 0


#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.FarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.FarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.FarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.FarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.FarmingWisdom store result score @s dummy run data get entity @s SelectedItem.tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.FarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.FarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeFarmingWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeFarmingWisdom
scoreboard players operation @s farming_wisdom += @s dummy
scoreboard players set @s dummy 0


#Enchantments
execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:cultivating"}].lvl
scoreboard players operation @s farming_wisdom += @s dummy


#Rabbit Pet
scoreboard objectives add level dummy "Level"
execute store result score @s level run data get entity @s XpLevel 10
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={skyblock:pets/rabbit/legendary=true}] dummy 3

scoreboard players operation @s level *= @s dummy
scoreboard players set @s dummy 10
scoreboard players operation @s level /= @s dummy

scoreboard players operation @s farming_wisdom += @s level


#Booster Cookie 
scoreboard players add @s[scores={booster_cookie_duration=1..}] farming_wisdom 25


#Wisdom Potion
scoreboard players set @s dummy 0
scoreboard players set @s[scores={farming_wisdom_amplifier=0,farming_wisdom_duration=1..}] dummy 5
scoreboard players set @s[scores={farming_wisdom_amplifier=1,farming_wisdom_duration=1..}] dummy 10
scoreboard players set @s[scores={farming_wisdom_amplifier=2,farming_wisdom_duration=1..}] dummy 20
scoreboard players operation @s farming_wisdom += @s dummy


#Mayors
scoreboard players add @s[advancements={skyblock:events/election/special/derpy=true}] farming_wisdom 50


#Trinkets
scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Boost"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Super-Boost"}}]}] dummy 20
scoreboard players operation @s farming_wisdom += @s dummy

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Farming Exp Boost Common"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Farming Exp Boost Uncommon"}}]}] dummy 30
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Farming Exp Boost Rare"}}]}] dummy 40
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Farming Exp Boost Epic"}}]}] dummy 50
scoreboard players operation @s farming_wisdom += @s dummy

scoreboard objectives remove level
scoreboard objectives remove random