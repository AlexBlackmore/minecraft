execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=IceWalker] run execute at @e[type=minecraft:pig,tag=Spawner] run function skyblock:summon/dwarven_mines/ice_walker
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Goblin] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/goblin
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=TreasureHoarder] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/treasure_hoarder

execute at @e[tag=IceWalker] run tp @e[type=minecraft:pig,tag=Spawner] ~ ~-256 ~