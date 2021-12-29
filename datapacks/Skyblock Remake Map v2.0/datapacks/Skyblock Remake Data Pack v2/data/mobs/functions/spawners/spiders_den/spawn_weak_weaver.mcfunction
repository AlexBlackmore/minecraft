#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:3,SpawnRange:10,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:80,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:spider",CustomName:'{"text":"Splitter Spider","color":"red","italic":false}',Tags:["NaturallySpawning","SplitterSpider"],PortalCooldown:2,DeathLootTable:"mobs:mob_loot/spiders_den/weak_splitter_spider",Attributes:[{Name:generic.max_health,Base:180},{Name:generic.attack_damage,Base:25}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#