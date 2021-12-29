scoreboard players set @s[y_rotation=0..45] Date 1
scoreboard players set @s[y_rotation=45..90] Date 2
scoreboard players set @s[y_rotation=90..135] Date 3
scoreboard players set @s[y_rotation=135..180] Date 4
scoreboard players set @s[y_rotation=-180..-135] Date 5
scoreboard players set @s[y_rotation=-135..-90] Date 6
scoreboard players set @s[y_rotation=-90..-45] Date 7
scoreboard players set @s[y_rotation=-45..-0] Date 8

execute if entity @s[scores={Date=1}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[22.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=1}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[22.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=2}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[67.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=2}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[67.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=3}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[112.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=3}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[112.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=4}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[157.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=4}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[157.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=5}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-157.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=5}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-157.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=6}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-112.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=6}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-112.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=7}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-67.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=7}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-67.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[scores={Date=8}] run summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-22.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={Date=8}] run summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-22.5F,0F],Tags:["NPC","detailed_npc"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

item replace entity @s armor.head with air

#CHOOSE SKIN
function public_islands:npc/npc_list/detail/skins/detailed/function_tree/l7/l7_0

tag @s add detailed
scoreboard players reset @s Date
