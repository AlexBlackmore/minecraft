#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
tag @s add Will_spawn
setblock ~ ~-1 ~ spawner{SpawnCount:1,SpawnRange:5,MinSpawnDelay:200,MaxSpawnDelay:300,RequiredPlayerRange:150,MaxNearbyEntities:5,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:zombified_piglin",CustomName:'{"text":"Zombie Pigman","color":"red","italic":false}',Tags:["NaturallySpawning","ZombiePigman"],PortalCooldown:10,DeathLootTable:"mobs:mob_loot/deep_caverns/zombie_pigman",Attributes:[{Name:generic.max_health,Base:250},{Name:generic.attack_damage,Base:75}],CanPickUpLoot:0b,IsBaby:0b,HandItems:[{id:"golden_sword",Count:1b,tag:{Enchantments:[{}]}},{}]}]}}
schedule function mobs:spawners/remove_spawner 7t
#------------------------------------------#