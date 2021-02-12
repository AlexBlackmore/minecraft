#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:10,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:80,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Enderman","color":"red","italic":false}',Tags:["NaturallySpawning","Enderman"],PortalCooldown:45,DeathLootTable:"mobs:mob_loot/strong_enderman",Attributes:[{Name:generic.max_health,Base:6000},{Name:generic.attack_damage,Base:600}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#