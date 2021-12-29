#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
execute in skyblock:the_end run setblock 0 5 0 spawner{SpawnCount:2,SpawnRange:70,MinSpawnDelay:1,MaxSpawnDelay:1,RequiredPlayerRange:100,MaxNearbyEntities:4,SpawnData:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Zealot","color":"red","italic":false}',Tags:["NaturallySpawning","Zealot"],PortalCooldown:55,DeathLootTable:"mobs:mob_loot/the_end/zealot",Attributes:[{Name:generic.max_health,Base:13000},{Name:generic.attack_damage,Base:1250}]}]},SpawnPotentials:[{Weight:20,Entity:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Zealot","color":"red","italic":false}',Tags:["NaturallySpawning","Zealot"],PortalCooldown:55,DeathLootTable:"mobs:mob_loot/the_end/zealot",Attributes:[{Name:generic.max_health,Base:13000},{Name:generic.attack_damage,Base:1250}]}]}},{Weight:1,Entity:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"minecraft:enderman",CustomName:'{"text":"Zealot","color":"red","italic":false}',Tags:["NaturallySpawning","Zealot","EnderChestZealot"],PortalCooldown:55,DeathLootTable:"mobs:mob_loot/the_end/zealot",Attributes:[{Name:generic.max_health,Base:13000},{Name:generic.attack_damage,Base:1250}],carriedBlockState:{Name:"minecraft:ender_chest"}}]}}]}

scoreboard players set $NestSpawners Temp 1
schedule function mobs:spawners/the_end/remove 2s
#------------------------------------------#