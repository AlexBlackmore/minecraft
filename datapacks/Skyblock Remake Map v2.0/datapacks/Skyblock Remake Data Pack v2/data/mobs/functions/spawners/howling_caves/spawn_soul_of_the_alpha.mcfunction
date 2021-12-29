#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:80,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:wolf",CustomName:'{"text":"Soul of the Alpha","color":"red","italic":false}',Tags:["NaturallySpawning","SoulOfTheAlpha"],PortalCooldown:55,AngerTime:99999999,DeathLootTable:"mobs:mob_loot/howling_caves/soul_of_the_alpha",Attributes:[{Name:generic.max_health,Base:31150},{Name:generic.attack_damage,Base:1150}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#

