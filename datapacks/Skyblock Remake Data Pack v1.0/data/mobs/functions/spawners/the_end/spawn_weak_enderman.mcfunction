#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:120,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Enderman","color":"red","italic":false}',Tags:["NaturallySpawning","Enderman"],PortalCooldown:42,DeathLootTable:"mobs:mob_loot/weak_enderman",Attributes:[{Name:generic.max_health,Base:4500},{Name:generic.attack_damage,Base:500}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#