playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 2 0.8 1
playsound minecraft:entity.wither.spawn hostile @a[distance=..10] ~ ~ ~ 1 1.5 1
particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 1 10 normal
summon minecraft:zombie ~ ~ ~ {Tags:["RevenantHorror","Slayer","Tier4","NewSlayer"],DeathLootTable:"mobs:mob_loot/slayers/zombie/tier_4",CustomName:'[{"text":"Revenant Horror"}]',Health:1500000,HandItems:[{id:diamond_hoe,tag:{Enchantments:[{}]},Count:1}],HandDropChances:[0.00F],ArmorItems:[{id:diamond_boots,Count:1},{id:chainmail_leggings,tag:{Enchantments:[{}]},Count:1},{id:diamond_chestplate,tag:{Enchantments:[{}]},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;-275785545,676744624,-1504261926,894305861],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhiZWUyM2I1YzcyNmFlOGUzZDAyMWU4YjRmNzUyNTYxOWFiMTAyYTRlMDRiZTk4M2I2MTQxNDM0OWFhYWM2NyJ9fX0="}]}}},Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Attributes:[{Name:"generic.attack_damage",Base:100.0F},{Name:"generic.movement_speed",Base:0.5F},{Name:"generic.max_health",Base:1500000F}]}
execute as @e[tag=NewSlayer] at @s run function mobs:summon/slayers/set_id