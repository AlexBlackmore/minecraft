scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add intelligence dummy "Intelligence"

scoreboard players set @a intelligence 0


#Base Intelligence
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 1
execute as @a[level=50..] run scoreboard players set @s dummy 50
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Intelligence
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Intelligence
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Intelligence
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Intelligence
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Intelligence
execute as @a run scoreboard players operation @s intelligence += @s dummy


#Reforce Intelligence
execute as @a run execute store result score @s dummy run data get entity @s SelectedItem.tag.Intelligence_Reforge
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.Intelligence_Reforge
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.Intelligence_Reforge
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.Intelligence_Reforge
execute as @a run scoreboard players operation @s intelligence += @s dummy

execute as @a run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.Intelligence_Reforge
execute as @a run scoreboard players operation @s intelligence += @s dummy


#Pet Intelligence
execute as @a run execute store result score @s dummy run data get entity @s XpLevel 0.5
execute as @a[level=100..] run scoreboard players set @s dummy 50
execute as @a[advancements={skyblock:pets/bee=true}] run scoreboard players operation @s intelligence += @s dummy
execute as @a[advancements={skyblock:pets/bee/uncommon=true}] run scoreboard players operation @s intelligence += @s dummy
execute as @a[advancements={skyblock:pets/bee/rare=true}] run scoreboard players operation @s intelligence += @s dummy
execute as @a[advancements={skyblock:pets/bee/epic=true}] run scoreboard players operation @s intelligence += @s dummy
execute as @a[advancements={skyblock:pets/bee/legendary=true}] run scoreboard players operation @s intelligence += @s dummy

execute as @a[advancements={skyblock:pets/bee=true}] run function skyblock:abilities/ambient/hive
execute as @a[advancements={skyblock:pets/bee/uncommon=true}] run function skyblock:abilities/ambient/hive
execute as @a[advancements={skyblock:pets/bee/rare=true}] run function skyblock:abilities/ambient/hive
execute as @a[advancements={skyblock:pets/bee/epic=true}] run function skyblock:abilities/ambient/hive
execute as @a[advancements={skyblock:pets/bee/legendary=true}] run function skyblock:abilities/ambient/hive



execute as @a run tellraw @s ["",{"text":"[Intelligence: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"intelligence"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]

