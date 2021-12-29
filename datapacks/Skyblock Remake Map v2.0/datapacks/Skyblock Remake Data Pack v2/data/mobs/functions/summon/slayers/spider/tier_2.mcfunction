playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 2 0.8 1
playsound minecraft:entity.wither.spawn hostile @a[distance=..10] ~ ~ ~ 1 1.5 1
particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 1 10 normal
summon minecraft:spider ~ ~ ~ {Tags:["TarantulaBroodfather","Slayer","Tier2","NewSlayer"],CustomName:'[{"text":"Tarantula Broodfather"}]',DeathLootTable:"mobs:mob_loot/slayers/spider/tier_2",Health:500,Attributes:[{Name:"generic.attack_damage",Base:15.0F},{Name:"generic.movement_speed",Base:0.3F},{Name:"generic.max_health",Base:500F}]}
summon minecraft:cave_spider ~ ~ ~ {Tags:["TarantulaChild","NeedID2","NoHealthBar","HasDamageUpdate"],NoAI:1b,CustomNameVisible:0b,Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:0.0F},{Name:"generic.movement_speed",Base:0.0F},{Name:"generic.max_health",Base:500000000000F}]}

execute as @e[tag=NewSlayer] at @s run function mobs:summon/slayers/set_id