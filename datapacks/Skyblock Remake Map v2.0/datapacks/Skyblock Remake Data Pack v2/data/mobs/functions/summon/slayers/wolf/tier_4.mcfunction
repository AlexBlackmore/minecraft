playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 2 0.8 1
playsound minecraft:entity.wolf.howl hostile @a[distance=..10] ~ ~ ~ 1 0.9 1
particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 1 10 normal
summon minecraft:wolf ~ ~ ~ {AngerTime:99999999,Tags:["SvenPackmaster","Slayer","Tier4","NewSlayer"],DeathLootTable:"mobs:mob_loot/slayers/wolf/tier_4",CustomName:'[{"text":"Sven Packmaster"}]',Health:500,Attributes:[{Name:"generic.attack_damage",Base:15.0F},{Name:"generic.movement_speed",Base:0.2F},{Name:"generic.max_health",Base:500F}]}

execute as @e[tag=NewSlayer] at @s run function mobs:summon/slayers/set_id