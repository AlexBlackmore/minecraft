execute as @e[tag=Minion,tag=enchanted_coal] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove enchanted_coal
execute as @e[tag=Minion,tag=enchanted_charcoal] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove enchanted_charcoal
execute as @e[tag=Minion,tag=hamster_wheel] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove hamster_wheel
execute as @e[tag=Minion,tag=foul_flesh] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove foul_flesh
execute as @e[tag=Minion,tag=enchanted_bread] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove enchanted_bread
execute as @e[tag=Minion,tag=catalyst] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove catalyst
execute as @e[tag=Minion,tag=hyper_catalyst] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove hyper_catalyst
execute as @e[tag=Minion,tag=tasty_cheese] unless data entity @s ActiveEffects[{Id:1}].Duration run tag @s remove tasty_cheese


scoreboard objectives add minspawndelay dummy "MinSpawnDelay"
scoreboard objectives add maxspawndelay dummy "MaxSpawnDelay"
scoreboard objectives add spawncount dummy "SpawnCount"
scoreboard objectives add spawnrange dummy "SpawnRange"


execute as @e[tag=Minion] at @s unless block ~ ~ ~ spawner run kill @s 

execute as @e[tag=Minion] run scoreboard players set @s minspawndelay 200
execute as @e[tag=Minion] run scoreboard players set @s maxspawndelay 800
execute as @e[tag=Minion] run scoreboard players set @s spawncount 4
execute as @e[tag=Minion] run scoreboard players set @s spawnrange 4


execute as @e[tag=Minion] run scoreboard players set @s dummy 100

#Upgrades
execute as @e[tag=Minion,tag=minion_expander] run scoreboard players add @s spawnrange 1
execute as @e[tag=Minion,tag=minion_expander] run scoreboard players set @s dummy 95

execute as @e[tag=Minion,tag=solar_panel,predicate=skyblock:time/day] run scoreboard players set @s dummy 75

execute as @e[tag=Minion,tag=enchanted_lava_bucket] run scoreboard players set @s dummy 75
execute as @e[tag=Minion,tag=magma_bucket] run scoreboard players set @s dummy 70
execute as @e[tag=Minion,tag=plasma_bucket] run scoreboard players set @s dummy 65

execute as @e[tag=Minion,tag=everburning_flame] run scoreboard players set @s dummy 60


execute as @e[tag=Minion] run scoreboard players operation @s minspawndelay *= @s dummy
execute as @e[tag=Minion] run scoreboard players operation @s maxspawndelay *= @s dummy


execute as @e[tag=Minion] run scoreboard players set @s dummy 100

#Fuel
execute as @e[tag=Minion,tag=enchanted_coal] run scoreboard players set @s dummy 90
execute as @e[tag=Minion,tag=enchanted_charcoal] run scoreboard players set @s dummy 80
execute as @e[tag=Minion,tag=hamster_wheel] run scoreboard players set @s dummy 50
execute as @e[tag=Minion,tag=foul_flesh] run scoreboard players set @s dummy 10
execute as @e[tag=Minion,tag=enchanted_bread] run scoreboard players set @s dummy 95

execute as @e[tag=Minion] run scoreboard players operation @s minspawndelay *= @s dummy
execute as @e[tag=Minion] run scoreboard players operation @s maxspawndelay *= @s dummy


execute as @e[tag=Minion] run scoreboard players set @s dummy 1

execute as @e[tag=Minion,tag=tasty_cheese] run scoreboard players set @s dummy 2
execute as @e[tag=Minion,tag=catalyst] run scoreboard players set @s dummy 3
execute as @e[tag=Minion,tag=hyper_catalyst] run scoreboard players set @s dummy 4

execute as @e[tag=Minion] run scoreboard players operation @s spawncount *= @s dummy


execute as @e[tag=Minion] at @s store result block ~ ~ ~ MinSpawnDelay short 0.0001 run scoreboard players get @s minspawndelay
execute as @e[tag=Minion] at @s store result block ~ ~ ~ MaxSpawnDelay short 0.0001 run scoreboard players get @s maxspawndelay
execute as @e[tag=Minion] at @s store result block ~ ~ ~ SpawnCount short 1 run scoreboard players get @s spawncount
execute as @e[tag=Minion] at @s store result block ~ ~ ~ SpawnRange short 1 run scoreboard players get @s spawnrange

scoreboard objectives remove minspawndelay
scoreboard objectives remove maxspawndelay
scoreboard objectives remove spawncount
scoreboard objectives remove spawnrange
