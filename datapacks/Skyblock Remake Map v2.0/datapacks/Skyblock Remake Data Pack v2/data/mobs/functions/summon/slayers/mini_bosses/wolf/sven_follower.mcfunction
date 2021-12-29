playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 2 1 1
execute anchored eyes run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute anchored eyes run summon minecraft:wolf ~ ~ ~ {DeathLootTable:"mobs:mob_loot/mini_bosses/follower",AngerTime:99999999,Tags:["MiniBoss","SvenFollower"],PortalCooldown:170,CustomName:'[{"text":"Sven Follower"}]',Health:120000,ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Attributes:[{Name:"generic.attack_damage",Base:1500.0F},{Name:"generic.movement_speed",Base:0.5F},{Name:"generic.max_health",Base:120000F}]}

execute as @e[tag=MiniBoss,tag=!ID] at @s run function slayers:set_miniboss_id
execute as @e[tag=MiniBoss,tag=!Veteran] at @s as @a if score @s PlayerID = @e[tag=MiniBoss,sort=nearest,limit=1] PlayerID if entity @s[tag=SlayerVeteranBonus] as @e[tag=MiniBoss,sort=nearest,limit=1] run function slayers:veteran_bonus