scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add obsidian dummy "Obsidian"

scoreboard players set @p[predicate=skyblock:obsidian_chestplate] obsidian 0
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0

execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:obsidian"}]}] run execute store result score @p dummy run data get entity @s Inventory[{Slot:0b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:1b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:2b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:3b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:4b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:5b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:6b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:7b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:8b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:9b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:10b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:11b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:12b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:13b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:13b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:14b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:14b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:15b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:15b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:16b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:16b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:17b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:18b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:18b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:19b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:19b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:20b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:20b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:21b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:21b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:22b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:22b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:23b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:23b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:24b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:24b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:25b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:25b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:26b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:26b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:27b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:27b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:28b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:28b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:29b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:29b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:30b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:30b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:31b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:31b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:32b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:32b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:33b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:33b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:34b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:34b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:35b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:35b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 0
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:obsidian"}]}] run execute store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].Count
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian += @s dummy

scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 20
execute as @p[predicate=skyblock:obsidian_chestplate] run scoreboard players operation @s obsidian /= @s dummy

execute as @p[predicate=skyblock:obsidian_chestplate] run execute store result score @s dummy run attribute @s minecraft:generic.movement_speed modifier value get 84-79-71-02-26 100
execute as @p[predicate=skyblock:obsidian_chestplate] run execute unless score @s obsidian = @s dummy run tellraw @s ["",{"text":"[Obsidian Chestplate: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"obsidian"},"italic":true,"color":"gray"},{"text":"% Speed]","italic":true,"color":"gray"}]
attribute @p[predicate=skyblock:obsidian_chestplate] minecraft:generic.movement_speed modifier remove 84-79-71-02-26
scoreboard players set @p[predicate=skyblock:obsidian_chestplate] dummy 118

execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 1 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.01 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 2 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.02 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 3 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.03 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 4 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.04 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 5 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.05 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 6 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.06 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 7 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.07 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 8 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.08 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 9 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.09 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 10 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.10 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 11 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.11 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 12 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.12 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 13 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.13 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 14 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.14 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 15 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.15 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 16 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.16 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 17 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.17 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 18 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.18 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 19 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.19 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 20 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.20 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 21 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.21 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 22 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.22 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 23 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.23 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 24 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.24 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 25 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.25 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 26 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.26 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 27 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.27 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 28 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.28 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 29 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.29 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 30 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.30 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 31 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.31 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 32 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.32 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 33 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.33 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 34 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.34 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 35 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.35 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 36 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.36 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 37 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.37 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 38 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.38 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 39 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.39 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 40 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.40 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 41 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.41 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 42 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.42 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 43 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.43 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 44 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.44 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 45 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.45 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 46 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.46 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 47 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.47 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 48 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.48 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 49 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.49 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 50 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.50 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 51 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.51 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 52 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.52 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 53 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.53 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 54 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.54 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 55 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.55 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 56 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.56 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 57 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.57 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 58 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.58 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 59 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.59 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 60 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.60 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 61 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.61 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 62 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.62 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 63 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.63 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 64 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.64 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 65 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.65 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 66 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.66 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 67 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.67 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 68 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.68 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 69 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.69 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 70 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.70 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 71 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.71 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 72 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.72 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 73 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.73 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 74 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.74 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 75 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.75 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 76 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.76 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 77 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.77 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 78 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.78 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 79 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.79 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 80 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.80 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 81 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.81 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 82 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.82 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 83 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.83 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 84 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.84 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 85 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.85 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 86 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.86 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 87 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.87 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 88 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.88 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 89 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.89 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 90 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.90 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 91 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.91 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 92 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.92 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 93 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.93 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 94 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.94 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 95 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.95 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 96 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.96 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 97 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.97 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 98 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.98 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 99 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 0.99 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 100 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.00 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 101 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.01 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 102 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.02 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 103 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.03 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 104 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.04 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 105 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.05 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 106 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.06 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 107 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.07 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 108 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.08 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 109 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.09 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 110 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.10 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 111 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.11 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 112 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.12 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 113 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.13 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 114 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.14 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 115 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.15 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 116 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.16 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian matches 117 run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.17 multiply_base
execute as @p[predicate=skyblock:obsidian_chestplate] run execute if score @s obsidian >= @s dummy run attribute @s minecraft:generic.movement_speed modifier add 84-79-71-02-26 "Obsidian Chestplate" 1.18 multiply_base


function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/obsidian_chestplate=true}] run schedule function skyblock:abilities/ambient/obsidian_chestplate 2s replace