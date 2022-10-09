#Hub Island
execute if predicate skyblock:time/night at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=RespawningSkeleton] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/hub_island/respawning_skeleton

execute store result score @s time run time query gametime
scoreboard players set @s dummy 2
scoreboard players operation @s time %= @s dummy 

execute if score @s time matches 0 if predicate skyblock:time/night at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Graveyard] run execute as @e[type=minecraft:pig,tag=Spawner,limit=1,sort=random] at @s run function skyblock:summon/hub_island/zombie
execute if score @s time matches 1 if predicate skyblock:time/night at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Graveyard] run execute as @e[type=minecraft:pig,tag=Spawner,limit=1,sort=random] at @s run function skyblock:summon/hub_island/zombie_villager

execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=CryptGhoul] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/hub_island/crypt_ghoul

#Dwarven Mines
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=IceWalker] run execute at @e[type=minecraft:pig,tag=Spawner] run function skyblock:summon/dwarven_mines/ice_walker
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Goblin] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/goblin_burrows
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=TreasureHoarder] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/treasure_hoarder


tp @e[type=minecraft:pig,tag=Spawner] ~ ~-256 ~