#Enchantments
execute if data entity @s[predicate=skyblock:random_chance/33] SelectedItem.tag.Thunderlord run function skyblock:abilities/enchantments/thunderlord

execute if data entity @s SelectedItem.tag.Cleave run function skyblock:abilities/enchantments/cleave

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Cleaver"}}}] at @e[tag=target] run scoreboard players add @e[type=#minecraft:monster,distance=0..3,tag=!target] multiplier 40
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Super Cleaver"}}}] at @e[tag=target] run scoreboard players add @e[type=#minecraft:monster,distance=0..3,tag=!target] multiplier 50
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Hyper Cleaver"}}}] at @e[tag=target] run scoreboard players add @e[type=#minecraft:monster,distance=0..4,tag=!target] multiplier 50
tag @e[tag=!target,scores={multiplier=1..}] add target

execute if data entity @s[predicate=skyblock:random_chance/33] SelectedItem.tag.Thunderbolt run function skyblock:abilities/enchantments/thunderbolt


#Enchantments
execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Cubism 10
execute as @e[tag=target,type=#minecraft:cubes] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Dragon_Hunter 8
execute as @e[tag=target,type=minecraft:ender_dragon] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Ender_Slayer 15
execute as @e[tag=target,type=#minecraft:ender] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy

execute if data entity @p[tag=attacker] SelectedItem.tag.Execute run function skyblock:abilities/enchantments/execute

execute if data entity @p[tag=attacker] SelectedItem.tag.First_Strike run function skyblock:abilities/enchantments/first_strike

execute if data entity @p[tag=attacker] SelectedItem.tag.Giant_Killer run function skyblock:abilities/enchantments/giant_killer

execute if data entity @p[tag=attacker] SelectedItem.tag.Prosecute run function skyblock:abilities/enchantments/prosecute

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Smoldering 3
execute as @e[tag=target,type=minecraft:blaze] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy

execute if data entity @p[tag=attacker] SelectedItem.tag.Titan_Killer run function skyblock:abilities/enchantments/titan_killer

execute if data entity @p[tag=attacker] SelectedItem.tag.Triple_Strike run function skyblock:abilities/enchantments/triple_strike

execute if data entity @p[tag=attacker] SelectedItem.tag.Venomous run function skyblock:abilities/enchantments/venomous

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Spiked_Hook 5
execute as @e[tag=target] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy


#Swords
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Spider Sword"}}}] as @e[tag=target,type=#minecraft:arthropods] run scoreboard players add @s multiplier 100
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Scorpion Foil"}}}] as @e[tag=target,type=#minecraft:arthropods] run scoreboard players add @s multiplier 250

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Prismarine Blade"}}},predicate=skyblock:in_water] as @e[tag=target] run scoreboard players add @s multiplier 200

execute if entity @s[nbt={SelectedItem:{tag:{Name:"End Sword"}}}] as @e[tag=target,type=#minecraft:ender] run scoreboard players add @s multiplier 100

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Voidwalker Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 100
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 150
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 200
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 250
execute if entity @s[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 350
execute if entity @s[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 500
execute if entity @s[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] as @e[tag=target,type=enderman] run scoreboard players add @s multiplier 650

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Undead Sword"}}}] as @e[tag=target,type=#minecraft:undead] run scoreboard players add @s multiplier 100
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Revenant Falchion"}}}] as @e[tag=target,type=#minecraft:zombies] run scoreboard players add @s multiplier 150
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] as @e[tag=target,type=#minecraft:zombies] run scoreboard players add @s multiplier 200
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] as @e[tag=target,type=#minecraft:zombies] run scoreboard players add @s multiplier 250

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Necron's Blade"}}}] as @e[tag=target,type=wither] run scoreboard players add @s multiplier 50
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Hyperion"}}}] as @e[tag=target,type=wither] run scoreboard players add @s multiplier 50
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Astraea"}}}] as @e[tag=target,type=wither] run scoreboard players add @s multiplier 50
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Scylla"}}}] as @e[tag=target,type=wither] run scoreboard players add @s multiplier 50
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Valkyrie"}}}] as @e[tag=target,type=wither] run scoreboard players add @s multiplier 50

attribute @s[tag=heartstopper] minecraft:generic.attack_damage modifier remove 33-22-41-31-5
tellraw @s[tag=heartstopper] {"text":"[Heartstopper: -250% Attack Damage]","italic":true,"color":"gray"}
tag @s[tag=heartstopper] remove heartstopper

execute if entity @s[predicate=skyblock:is_sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run function skyblock:abilities/instant/throw
execute as @s[predicate=!skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run item modify entity @s weapon.mainhand skyblock:remove_vanishing_curse

effect give @s[predicate=skyblock:random_chance/50,nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] instant_health
effect give @s[nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] instant_health 1 1 

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Spirit Sword"}}}] as @e[tag=target,type=#minecraft:undead] run function skyblock:abilities/instant/spirit_damage

execute if entity @e[tag=target,type=wolf] run attribute @s[nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier add 27-74-7-61-76 "Pooch Sword" 30 add

attribute @p[tag=attacker] minecraft:generic.attack_damage modifier remove 9-65-15-20-96
tellraw @s[tag=me_smash_head] {"text":"[ME SMASH HEAD: -100% Attack Damage","italic":true,"color":"gray"}
execute if entity @s[tag=me_smash_head] run effect give @e[tag=target,type=#minecraft:animals] weakness 30 6
tag @p[tag=attacker] remove me_smash_head

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Aspect of the End"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @e[tag=target] damage 1500
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Aspect of the Void"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @e[tag=target] damage 1500

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Emerald Blade"}}}] run function skyblock:abilities/instant/emerald_blade
