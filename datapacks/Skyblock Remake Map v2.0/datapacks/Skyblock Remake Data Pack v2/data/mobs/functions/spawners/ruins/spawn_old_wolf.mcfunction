#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:3,SpawnRange:10,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:80,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:wolf",CustomName:'{"text":"Old Wolf","color":"red","italic":false}',Tags:["NaturallySpawning","OldWolf"],PortalCooldown:55,AngerTime:99999999,DeathLootTable:"mobs:mob_loot/ruins/old_wolf",Attributes:[{Name:generic.max_health,Base:15000},{Name:generic.attack_damage,Base:800}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#