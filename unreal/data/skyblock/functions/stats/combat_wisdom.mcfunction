scoreboard players set @s combat_wisdom 0
scoreboard players set @s dummy 0


#Armor
execute if data entity @s Inventory[{Slot:100b}].tag.CombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.CombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.CombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.CombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.CombatWisdom store result score @s dummy run data get entity @s SelectedItem.tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.CombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.CombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0


#Reforge
execute if data entity @s Inventory[{Slot:100b}].tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:101b}].tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:102b}].tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:103b}].tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s SelectedItem.tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0

execute if data entity @s Inventory[{Slot:-106b}].tag.ReforgeCombatWisdom store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.ReforgeCombatWisdom
scoreboard players operation @s combat_wisdom += @s dummy
scoreboard players set @s dummy 0


#Wolf Pet
scoreboard objectives add level dummy "Level"
execute store result score @s level run data get entity @s XpLevel 10
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={skyblock:pets/wolf/legendary=true}] dummy 3

scoreboard players operation @s level *= @s dummy
scoreboard players set @s dummy 10
scoreboard players operation @s level /= @s dummy

scoreboard players operation @s combat_wisdom += @s level


#Accessories
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={accessories/hunter_talisman=true}] dummy 2
scoreboard players set @s[advancements={accessories/hunter_ring=true}] dummy 5
scoreboard players operation @s combat_wisdom += @s dummy


#Booster Cookie 
scoreboard players add @s[scores={booster_cookie_duration=1..}] combat_wisdom 25


#Wisdom Potion
scoreboard players set @s dummy 0
scoreboard players set @s[scores={combat_wisdom_amplifier=0,combat_wisdom_duration=1..}] dummy 5
scoreboard players set @s[scores={combat_wisdom_amplifier=1,combat_wisdom_duration=1..}] dummy 10
scoreboard players set @s[scores={combat_wisdom_amplifier=2,combat_wisdom_duration=1..}] dummy 20
scoreboard players operation @s combat_wisdom += @s dummy


#Mayors
scoreboard players add @s[advancements={skyblock:events/election/special/derpy=true}] combat_wisdom 50


#Trinkets
scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Boost"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Super-Boost"}}]}] dummy 20
scoreboard players operation @s combat_wisdom += @s dummy

scoreboard players set @s dummy 0
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Combat Exp Boost Common"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Combat Exp Boost Uncommon"}}]}] dummy 30
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Combat Exp Boost Rare"}}]}] dummy 40
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Combat Exp Boost Epic"}}]}] dummy 50
scoreboard players operation @s combat_wisdom += @s dummy

scoreboard objectives remove level
scoreboard objectives remove random