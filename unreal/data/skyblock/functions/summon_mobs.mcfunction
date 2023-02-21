#Hub Island
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Graveyard] run execute at @e[type=minecraft:pig,tag=Spawner] run function skyblock:summon/hub_island/graveyard
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Crypts] run execute at @e[type=minecraft:pig,tag=Spawner] run function skyblock:summon/hub_island/crypts


#Dwarven Mines
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=IceWalker] run execute at @e[type=minecraft:pig,tag=Spawner] run function skyblock:summon/dwarven_mines/ice_walker
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Goblin] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/goblin_burrows
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=TreasureHoarder] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run function skyblock:summon/dwarven_mines/treasure_hoarder


#Blazing Fortress
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Pigman] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:items/spawn_eggs/blazing_fortress/pigman
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=MagmaCube] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:items/spawn_eggs/blazing_fortress/magma_cube
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Blaze] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:items/spawn_eggs/blazing_fortress/blaze
execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=WitherSkeleton] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:items/spawn_eggs/blazing_fortress/wither_skeleton


execute if entity @e[type=item,nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run function skyblock:sea_creatures
tp @e[type=minecraft:pig,tag=Spawner] ~ ~-256 ~