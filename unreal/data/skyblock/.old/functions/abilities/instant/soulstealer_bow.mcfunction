tag @e[predicate=skyblock:nausea1] add soulstealer_bow
execute at @e[type=armor_stand,tag=projectile] run execute at @e[type=!armor_stand,distance=0..3] run tp @e[type=armor_stand,tag=projectile,limit=1,sort=nearest] ~ ~ ~
tag @p[predicate=skyblock:soulstealer_bow_rare] add soulstealer_bow_player
tag @p[predicate=skyblock:soulstealer_bow_epic] add soulstealer_bow_player

execute at @p[tag=soulstealer_bow_player] run playsound minecraft:entity.experience_orb.pickup player @p

execute at @e[limit=1,tag=soulstealer_bow] run summon tnt ~ ~ ~ {Fuse:0}
execute if entity @p[predicate=skyblock:soulstealer_bow_rare] run effect give @e[tag=soulstealer_bow] wither 10 1
execute if entity @p[predicate=skyblock:soulstealer_bow_epic] run effect give @e[tag=soulstealer_bow] wither 40 1

effect clear @e[tag=soulstealer_bow] nausea
kill @e[type=armor_stand,tag=soulstealer_bow,limit=1,sort=nearest]
tag @e[tag=soulstealer_bow] remove soulstealer_bow
tag @p[tag=soulstealer_bow_player] remove soulstealer_bow_player

function skyblock:abilities/reset_instant