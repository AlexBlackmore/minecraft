tag @p[advancements={skyblock:commands/ambient/smart_miner=true}] add smart_miner
tag @p[tag=smart_miner,nbt={Inventory:[{Slot:100b,tag:{Name:"Goblin Boots"}},{Slot:101b,tag:{Name:"Goblin Leggings"}},{Slot:102b,tag:{Name:"Goblin Chestplate"}},{Slot:103b,tag:{Name:"Goblin Helmet"}}]}] add full_set

scoreboard objectives add xp_level dummy "XP Level"

execute as @p[tag=full_set] run execute store result score @s xp_level run data get entity @s XpLevel 0.0666

effect give @p[tag=full_set,scores={xp_level=0}] haste 15 1
effect give @p[tag=full_set,scores={xp_level=1}] haste 15 2
effect give @p[tag=full_set,scores={xp_level=2}] haste 15 3
effect give @p[tag=full_set,scores={xp_level=3}] haste 15 4
effect give @p[tag=full_set,scores={xp_level=4}] haste 15 5
effect give @p[tag=full_set,scores={xp_level=5}] haste 15 6
effect give @p[tag=full_set,scores={xp_level=6}] haste 15 7
effect give @p[tag=full_set,scores={xp_level=7}] haste 15 8
effect give @p[tag=full_set,scores={xp_level=8}] haste 15 9

effect give @p[tag=full_set] hunger 15

scoreboard players add @p[tag=full_set] xp_level 2
tellraw @p[tag=full_set] ["",{"text":"[Smart Miner: +Haste ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"xp_level"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]
scoreboard objectives remove xp_level

advancement revoke @p[advancements={skyblock:commands/ambient/smart_miner=true},tag=!full_set] only skyblock:commands/ambient/smart_miner
execute if entity @p[tag=full_set] run schedule function skyblock:abilities/ambient/smart_miner 4s replace
tag @p[tag=smart_miner] remove smart_miner
tag @p[tag=full_set] remove full_set



