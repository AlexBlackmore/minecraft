scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add crit_chance dummy "Crit Chance"
scoreboard objectives add crit_damage dummy "Crit Damage"

scoreboard players set @a crit_chance 0


#Base Crit Chance
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.5
execute as @a[level=60..] run scoreboard players set @s dummy 30
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Crit_Chance
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Crit_Chance
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Crit_Chance
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Crit_Chance
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Crit_Chance
execute as @a run scoreboard players operation @s crit_chance += @s dummy


#Reforce Crit Chance
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Crit_Chance_Reforge
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Crit_Chance_Reforge
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Crit_Chance_Reforge
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Crit_Chance_Reforge
execute as @a run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Crit_Chance_Reforge
execute as @a run scoreboard players operation @s crit_chance += @s dummy


#Pets
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.15
execute as @a[advancements={skyblock:pets/skeleton=true}] run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.1
execute as @a[advancements={skyblock:pets/ender_dragon=true}] run scoreboard players operation @s crit_chance += @s dummy
execute as @a[advancements={skyblock:pets/griffin=true}] run scoreboard players operation @s crit_chance += @s dummy
execute as @a[advancements={skyblock:pets/spider=true}] run scoreboard players operation @s crit_chance += @s dummy
execute as @a[advancements={skyblock:pets/tarantula=true}] run scoreboard players operation @s crit_chance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.05
execute as @a[advancements={skyblock:pets/wither_skeleton=true}] run scoreboard players operation @s crit_chance += @s dummy
execute as @a[advancements={skyblock:pets/tiger=true}] run scoreboard players operation @s crit_chance += @s dummy
execute as @a[advancements={skyblock:pets/giraffe=true}] run scoreboard players operation @s crit_chance += @s dummy


#Critical Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Critical
execute as @a[scores={dummy=1}] run scoreboard players add @s crit_chance 10
execute as @a[scores={dummy=2}] run scoreboard players add @s crit_chance 20
execute as @a[scores={dummy=3}] run scoreboard players add @s crit_chance 30
execute as @a[scores={dummy=4}] run scoreboard players add @s crit_chance 40
execute as @a[scores={dummy=5}] run scoreboard players add @s crit_chance 50
execute as @a[scores={dummy=6}] run scoreboard players add @s crit_chance 60
execute as @a[scores={dummy=7}] run scoreboard players add @s crit_chance 70


#Overload Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Overload
execute as @a[scores={dummy=1}] run scoreboard players add @s crit_chance 1
execute as @a[scores={dummy=2}] run scoreboard players add @s crit_chance 2
execute as @a[scores={dummy=3}] run scoreboard players add @s crit_chance 3
execute as @a[scores={dummy=4}] run scoreboard players add @s crit_chance 4
execute as @a[scores={dummy=5}] run scoreboard players add @s crit_chance 5


#Slayer
execute as @a[advancements={skyblock:slayer/spider/spider7=true}] run scoreboard players add @s crit_chance 1


#Critical Potion
execute as @a[tag=critical1] run scoreboard players add @s crit_chance 10
execute as @a[tag=critical2] run scoreboard players add @s crit_chance 15
execute as @a[tag=critical3] run scoreboard players add @s crit_chance 20
execute as @a[tag=critical4] run scoreboard players add @s crit_chance 25

tag @a[nbt={SelectedItem:{tag:{Name:"Terminator"}}}] add terminator
scoreboard players set @a[tag=terminator] dummy 4
execute as @a[tag=terminator] run scoreboard players operation @s crit_chance /= @s dummy
tag @a[tag=terminator] remove terminator

scoreboard players set @a crit_damage 0


#Base Crit Damage
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Crit_Damage
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Crit_Damage
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Crit_Damage
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Crit_Damage
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Crit_Damage
execute as @a run scoreboard players operation @s crit_damage += @s dummy


#Reforge Crit Damage
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Crit_Damage_Reforge
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Crit_Damage_Reforge
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Crit_Damage_Reforge
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Crit_Damage_Reforge
execute as @a run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Crit_Damage_Reforge
execute as @a run scoreboard players operation @s crit_damage += @s dummy


#Pets
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.75
execute as @a[advancements={skyblock:pets/enderman=true}] run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.5
execute as @a[advancements={skyblock:pets/ender_dragon=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/tiger=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/griffin=true}] run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.3
execute as @a[advancements={skyblock:pets/skeleton=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/tarantula=true}] run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.25
execute as @a[advancements={skyblock:pets/zombie=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/snowman=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/wither_skeleton=true}] run scoreboard players operation @s crit_damage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.1
execute as @a[advancements={skyblock:pets/parrot=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/wolf=true}] run scoreboard players operation @s crit_damage += @s dummy
execute as @a[advancements={skyblock:pets/rat=true}] run scoreboard players operation @s crit_damage += @s dummy


#Slayer
execute as @a[advancements={skyblock:slayer/spider/spider1=true}] run scoreboard players add @s crit_damage 1
execute as @a[advancements={skyblock:slayer/spider/spider2=true}] run scoreboard players add @s crit_damage 1
execute as @a[advancements={skyblock:slayer/spider/spider3=true}] run scoreboard players add @s crit_damage 1
execute as @a[advancements={skyblock:slayer/spider/spider4=true}] run scoreboard players add @s crit_damage 1
execute as @a[advancements={skyblock:slayer/spider/spider5=true}] run scoreboard players add @s crit_damage 2
execute as @a[advancements={skyblock:slayer/spider/spider6=true}] run scoreboard players add @s crit_damage 2
execute as @a[advancements={skyblock:slayer/spider/spider8=true}] run scoreboard players add @s crit_damage 3
execute as @a[advancements={skyblock:slayer/spider/spider9=true}] run scoreboard players add @s crit_damage 3

execute as @a[advancements={skyblock:slayer/wolf/wolf1=true}] run scoreboard players add @s crit_damage 1
execute as @a[advancements={skyblock:slayer/wolf/wolf2=true}] run scoreboard players add @s crit_damage 2

#Radioactive (Tarantula Helmet)
tag @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Tarantula Helmet"}}]}] add radioactive
execute as @a[tag=radioactive] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 0.5
execute as @a[tag=radioactive] run scoreboard players operation @s crit_damage += attack_damage
tag @a[tag=radioactive] remove radioactive


#Critical Potion
execute as @a[tag=critical1] run scoreboard players add @s crit_damage 10
execute as @a[tag=critical2] run scoreboard players add @s crit_damage 20
execute as @a[tag=critical3] run scoreboard players add @s crit_damage 30
execute as @a[tag=critical4] run scoreboard players add @s crit_damage 40


#Spirit Potion
execute as @a[tag=spirit1] run scoreboard players add @s crit_damage 10
execute as @a[tag=spirit2] run scoreboard players add @s crit_damage 20
execute as @a[tag=spirit3] run scoreboard players add @s crit_damage 30
execute as @a[tag=spirit4] run scoreboard players add @s crit_damage 40


#Overload Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Overload
execute as @a[scores={dummy=1}] run scoreboard players add @s crit_damage 1
execute as @a[scores={dummy=2}] run scoreboard players add @s crit_damage 2
execute as @a[scores={dummy=3}] run scoreboard players add @s crit_damage 3
execute as @a[scores={dummy=4}] run scoreboard players add @s crit_damage 4
execute as @a[scores={dummy=5}] run scoreboard players add @s crit_damage 5

execute as @a[scores={dummy=1,crit_chance=100..}] run scoreboard players add @s crit_damage 10
execute as @a[scores={dummy=2,crit_chance=100..}] run scoreboard players add @s crit_damage 20
execute as @a[scores={dummy=3,crit_chance=100..}] run scoreboard players add @s crit_damage 30
execute as @a[scores={dummy=4,crit_chance=100..}] run scoreboard players add @s crit_damage 40
execute as @a[scores={dummy=5,crit_chance=100..}] run scoreboard players add @s crit_damage 50