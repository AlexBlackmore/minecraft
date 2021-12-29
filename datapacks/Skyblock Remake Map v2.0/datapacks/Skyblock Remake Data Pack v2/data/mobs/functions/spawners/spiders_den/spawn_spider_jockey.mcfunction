#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:3,SpawnRange:10,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:80,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:spider",CustomName:'{"text":"Spider Jockey","color":"red","italic":false}',Tags:["NaturallySpawning","SpiderJockey"],PortalCooldown:3,DeathLootTable:"mobs:mob_loot/spiders_den/jockey_spider",Attributes:[{Name:generic.max_health,Base:220},{Name:generic.attack_damage,Base:55}],Passengers:[{id:"minecraft:skeleton",CustomName:'{"text":"Jockey Skeleton","color":"red","italic":false}',Tags:["NaturallySpawning","JockeySkeleton"],PortalCooldown:3,DeathLootTable:"mobs:mob_loot/spiders_den/jockey_skeleton",HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Name:generic.max_health,Base:250}],CanPickUpLoot:0b}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#