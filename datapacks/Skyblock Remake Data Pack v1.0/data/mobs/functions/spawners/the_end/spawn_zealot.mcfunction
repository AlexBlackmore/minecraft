#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 10
function skyblock:random/range_lcg
execute unless score out RandMath matches 1 run setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:120,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Zealot","color":"red","italic":false}',Tags:["NaturallySpawning","Zealot"],PortalCooldown:55,DeathLootTable:"mobs:mob_loot/the_end/zealot",Attributes:[{Name:generic.max_health,Base:13000},{Name:generic.attack_damage,Base:1250}]}]}}
execute if score out RandMath matches 1 run setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:10,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:120,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Zealot","color":"red","italic":false}',Tags:["NaturallySpawning","Zealot","EnderChestZealot"],PortalCooldown:55,DeathLootTable:"mobs:mob_loot/the_end/zealot",Attributes:[{Name:generic.max_health,Base:13000},{Name:generic.attack_damage,Base:1250}],carriedBlockState:{Name:"minecraft:ender_chest"}}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#