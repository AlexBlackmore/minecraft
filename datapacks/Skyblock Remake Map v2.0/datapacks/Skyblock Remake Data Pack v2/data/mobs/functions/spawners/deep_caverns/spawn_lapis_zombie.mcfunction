#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:150,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:zombie",CustomName:'{"text":"Lapis Zombie","color":"red","italic":false}',PortalCooldown:7,Tags:["NaturallySpawning","LapisZombie"],DeathLootTable:"mobs:mob_loot/deep_caverns/lapis_zombie",Attributes:[{Name:generic.max_health,Base:200},{Name:generic.attack_damage,Base:50}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:255}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:255}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:255}}},{id:"minecraft:blue_stained_glass",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],CanPickUpLoot:0b,IsBaby:0b,HandItems:[{id:"air",Count:1b},{}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#