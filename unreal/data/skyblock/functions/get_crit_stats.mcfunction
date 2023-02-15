scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add Critchance dummy "Crit Chance"
scoreboard objectives add Critdamage dummy "Crit Damage"

scoreboard players set @a Critchance 0


#Base Crit Chance
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.5
execute as @a[level=60..] run scoreboard players set @s dummy 30
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.CritChance
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CritChance
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CritChance
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CritChance
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CritChance
execute as @a run scoreboard players operation @s Critchance += @s dummy


#Reforce Crit Chance
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.CritChance_Reforge
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CritChance_Reforge
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CritChance_Reforge
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CritChance_Reforge
execute as @a run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CritChance_Reforge
execute as @a run scoreboard players operation @s Critchance += @s dummy


#Pets
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.15
execute as @a[advancements={skyblock:pets/skeleton=true}] run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.1
execute as @a[advancements={skyblock:pets/ender_dragon=true}] run scoreboard players operation @s Critchance += @s dummy

execute as @a[advancements={skyblock:pets/griffin=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/griffin/uncommon=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/griffin/rare=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/griffin/epic=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/griffin/legendary=true}] run scoreboard players operation @s Critchance += @s dummy

execute as @a[advancements={skyblock:pets/spider=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/tarantula=true}] run scoreboard players operation @s Critchance += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.05
execute as @a[advancements={skyblock:pets/wither_skeleton=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/tiger=true}] run scoreboard players operation @s Critchance += @s dummy
execute as @a[advancements={skyblock:pets/giraffe=true}] run scoreboard players operation @s Critchance += @s dummy


#Critical Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Critical 10
execute as @a run scoreboard players operation @s Critchance += @s dummy


#Overload Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Overload
execute as @a run scoreboard players operation @s Critchance += @s dummy


#Slayer
execute as @a[advancements={skyblock:slayer/spider/spider7=true}] run scoreboard players add @s Critchance 1


#Critical Potion
execute as @a[tag=critical1] run scoreboard players add @s Critchance 10
execute as @a[tag=critical2] run scoreboard players add @s Critchance 15
execute as @a[tag=critical3] run scoreboard players add @s Critchance 20
execute as @a[tag=critical4] run scoreboard players add @s Critchance 25

tag @a[nbt={SelectedItem:{tag:{Name:"Terminator"}}}] add terminator
scoreboard players set @a[tag=terminator] dummy 4
execute as @a[tag=terminator] run scoreboard players operation @s Critchance /= @s dummy
tag @a[tag=terminator] remove terminator

scoreboard players set @a Critdamage 0


#Base Crit Damage
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.CritDamage
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CritDamage
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CritDamage
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CritDamage
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CritDamage
execute as @a run scoreboard players operation @s Critdamage += @s dummy


#Reforge Crit Damage
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.CritDamage_Reforge
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.CritDamage_Reforge
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.CritDamage_Reforge
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.CritDamage_Reforge
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.CritDamage_Reforge
execute as @a run scoreboard players operation @s Critdamage += @s dummy


#Pets
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.75
execute as @a[advancements={skyblock:pets/enderman=true}] run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.5
execute as @a[advancements={skyblock:pets/ender_dragon=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/tiger=true}] run scoreboard players operation @s Critdamage += @s dummy

execute as @a[advancements={skyblock:pets/griffin=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/griffin/uncommon=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/griffin/rare=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/griffin/epic=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/griffin/legendary=true}] run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.3
execute as @a[advancements={skyblock:pets/skeleton=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/tarantula=true}] run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.25
execute as @a[advancements={skyblock:pets/zombie=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/snowman=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/wither_skeleton=true}] run scoreboard players operation @s Critdamage += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.1
execute as @a[advancements={skyblock:pets/parrot=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/wolf=true}] run scoreboard players operation @s Critdamage += @s dummy
execute as @a[advancements={skyblock:pets/rat=true}] run scoreboard players operation @s Critdamage += @s dummy


#Slayer
execute as @a[advancements={skyblock:slayer/spider/spider1=true}] run scoreboard players add @s Critdamage 1
execute as @a[advancements={skyblock:slayer/spider/spider2=true}] run scoreboard players add @s Critdamage 1
execute as @a[advancements={skyblock:slayer/spider/spider3=true}] run scoreboard players add @s Critdamage 1
execute as @a[advancements={skyblock:slayer/spider/spider4=true}] run scoreboard players add @s Critdamage 1
execute as @a[advancements={skyblock:slayer/spider/spider5=true}] run scoreboard players add @s Critdamage 2
execute as @a[advancements={skyblock:slayer/spider/spider6=true}] run scoreboard players add @s Critdamage 2
execute as @a[advancements={skyblock:slayer/spider/spider8=true}] run scoreboard players add @s Critdamage 3
execute as @a[advancements={skyblock:slayer/spider/spider9=true}] run scoreboard players add @s Critdamage 3

execute as @a[advancements={skyblock:slayer/wolf/wolf1=true}] run scoreboard players add @s Critdamage 1
execute as @a[advancements={skyblock:slayer/wolf/wolf2=true}] run scoreboard players add @s Critdamage 2

#Radioactive (Tarantula Helmet)
tag @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Tarantula Helmet"}}]}] add radioactive
execute as @a[tag=radioactive] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 0.5
execute as @a[tag=radioactive] run scoreboard players operation @s Critdamage += attack_damage
tag @a[tag=radioactive] remove radioactive


#Critical Potion
execute as @a[tag=critical1] run scoreboard players add @s Critdamage 10
execute as @a[tag=critical2] run scoreboard players add @s Critdamage 20
execute as @a[tag=critical3] run scoreboard players add @s Critdamage 30
execute as @a[tag=critical4] run scoreboard players add @s Critdamage 40


#Spirit Potion
execute as @a[tag=spirit1] run scoreboard players add @s Critdamage 10
execute as @a[tag=spirit2] run scoreboard players add @s Critdamage 20
execute as @a[tag=spirit3] run scoreboard players add @s Critdamage 30
execute as @a[tag=spirit4] run scoreboard players add @s Critdamage 40


#Overload Enchantment
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Overload
execute as @a run scoreboard players operation @s Critdamage += @s dummy

execute as @a[scores={dummy=1,Critchance=100..}] run scoreboard players add @s Critdamage 10
execute as @a[scores={dummy=2,Critchance=100..}] run scoreboard players add @s Critdamage 20
execute as @a[scores={dummy=3,Critchance=100..}] run scoreboard players add @s Critdamage 30
execute as @a[scores={dummy=4,Critchance=100..}] run scoreboard players add @s Critdamage 40
execute as @a[scores={dummy=5,Critchance=100..}] run scoreboard players add @s Critdamage 50