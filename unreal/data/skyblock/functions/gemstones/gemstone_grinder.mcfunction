execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items

execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run tag @s add max_health
execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Attack Speed",Operation:1}] run tag @s add attack_speed
execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Luck",Operation:0}] run tag @s add luck
execute if data entity @s SelectedItem.tag.Intelligence run tag @s add intelligence
execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor",Operation:0}] run tag @s add armor
execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}] run tag @s add attack_damage
execute if data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor Toughness",Operation:0}] run tag @s add armor_toughness
tag @s[tag=!max_health,tag=!attack_speed,tag=!luck,tag=!intelligence,tag=!armor,tag=!attack_damage,tag=!armor_toughness] add fail
tellraw @s[tag=fail] {"text":"That item does not have any stats that can be upgraded!","color":"red"}
tag @s[tag=!fail] add success

execute unless data entity @s[tag=success] SelectedItem.tag.Pristine run item modify entity @s weapon.mainhand skyblock:gemstones/set_nbt


summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

#Max Health
execute store result score @s dummy run data get entity @s[tag=max_health] SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage"}].Amount 10

scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 12
scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 18
scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 26
scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 36
scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 48
scoreboard players add @s[tag=max_health,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 60

execute if entity @s[tag=max_health] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Max Health",Operation:0}].Amount double 0.1 run scoreboard players get @s dummy


#Attack Speed
execute store result score @s dummy run data get entity @s[tag=attack_speed] SelectedItem.tag.AttributeModifiers[{Name:"Attack Speed"}].Amount 100
	
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 20
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 28
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 40
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 60
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 80
scoreboard players add @s[tag=attack_speed,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 100

execute if entity @s[tag=attack_speed] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Attack Speed",Operation:1}].Amount double 0.01 run scoreboard players get @s dummy


#Luck
execute store result score @s dummy run data get entity @s[tag=luck] SelectedItem.tag.AttributeModifiers[{Name:"Attack Speed"}].Amount 10
	
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 20
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 28
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 40
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 60
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 80
scoreboard players add @s[tag=luck,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 100

execute if entity @s[tag=luck] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Luck"}].Amount double 0.1 run scoreboard players get @s dummy


#Intelligence
execute store result score @s dummy run data get entity @s[tag=intelligence] SelectedItem.tag.Intelligence 
	
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 12
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 14
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 17
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 20
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 24
scoreboard players add @s[tag=intelligence,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 30

execute if entity @s[tag=intelligence] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Intelligence int 1 run scoreboard players get @s dummy


#Armor
execute store result score @s dummy run data get entity @s[tag=armor] SelectedItem.tag.AttributeModifiers[{Name:"Armor"}].Amount 10
	
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 12
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 18
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 26
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 36
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 48
scoreboard players add @s[tag=armor,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 30

execute if entity @s[tag=armor] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Armor"}].Amount double 0.1 run scoreboard players get @s dummy


#Attack Damage
execute store result score @s dummy run data get entity @s[tag=attack_damage] SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage"}].Amount 10
	
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 12
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 14
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 18
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 22
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 26
scoreboard players add @s[tag=attack_damage,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 32

execute if entity @s[tag=attack_damage] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage"}].Amount double 0.1 run scoreboard players get @s dummy


#Armor Toughness
execute store result score @s dummy run data get entity @s[tag=armor_toughness] SelectedItem.tag.AttributeModifiers[{Name:"Armor Toughness"}].Amount 10
	
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:0}}}] dummy 10
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:1}}}] dummy 12
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:2}}}] dummy 14
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:3}}}] dummy 18
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:4}}}] dummy 22
scoreboard players add @s[tag=armor_toughness,nbt={SelectedItem:{tag:{Rarity:5}}}] dummy 26

execute if entity @s[tag=armor_toughness] store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Armor Toughness"}].Amount double 0.1 run scoreboard players get @s dummy


#Pristine
execute store result score @s dummy run data get entity @s[tag=success] SelectedItem.tag.Pristine
scoreboard players add @s[tag=success] dummy 1
execute store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Pristine int 1 run scoreboard players get @s[tag=success] dummy


item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
execute as @s[tag=success] run function skyblock:construct_lore
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
playsound minecraft:block.anvil.use player @s[tag=success]
kill @e[tag=anvil]

tag @s remove max_health
tag @s remove attack_speed
tag @s remove luck
tag @s remove intelligence
tag @s remove armor
tag @s remove attack_damage
tag @s remove armor_toughness
tag @s remove success
tag @s remove fail

advancement revoke @s only skyblock:commands/gemstones/gemstone_grinder