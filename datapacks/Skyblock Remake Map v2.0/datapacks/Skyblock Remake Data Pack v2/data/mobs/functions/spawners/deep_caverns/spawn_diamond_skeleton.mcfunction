#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:150,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:skeleton",CustomName:'{"text":"Skeleton","color":"red","italic":false}',Tags:["NaturallySpawning","DiamondReserve","Skeleton"],PortalCooldown:15,DeathLootTable:"mobs:mob_loot/deep_caverns/diamond_skeleton",Attributes:[{Name:generic.max_health,Base:250},{Name:generic.attack_damage,Base:142}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],CanPickUpLoot:0b}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#