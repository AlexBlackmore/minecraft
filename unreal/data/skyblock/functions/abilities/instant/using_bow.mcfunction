execute at @p run tag @e[type=arrow,nbt={pickup:1b},limit=1,sort=nearest] add calc
execute at @p run tag @e[type=arrow,nbt={pickup:2b},tag=!shot] add calc

scoreboard players set @p damage 0
execute store result score @p damage run data get entity @e[limit=1,tag=calc] damage
execute if entity @e[tag=calc] run scoreboard players operation @p damage += @p attack_damage

execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:savanna_bow] run function skyblock:abilities/instant/savanna_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:sniper_bow_rare] run function skyblock:abilities/instant/sniper_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:sniper_bow_epic] run function skyblock:abilities/instant/sniper_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:soulstealer_bow_rare] run function skyblock:abilities/instant/sniper_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:soulstealer_bow_epic] run function skyblock:abilities/instant/sniper_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:magma_bow] run function skyblock:abilities/instant/magma_bow
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:scorpion_bow] run function skyblock:abilities/instant/stinger
execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:end_stone_bow] run function skyblock:abilities/instant/extreme_focus

execute at @e[tag=calc,limit=1] run execute if entity @p[predicate=skyblock:ender_bow] run summon armor_stand ~ ~ ~ {Invulnerable:true,Tags:["projectile","ender_warp"]}
execute at @e[tag=calc,limit=1] run execute if entity @p[predicate=skyblock:explosive_bow] run summon armor_stand ~ ~ ~ {Invulnerable:true,Tags:["projectile","explosive_shot"]}
execute at @e[tag=calc,limit=1] run execute if entity @p[predicate=skyblock:soulstealer_bow_rare] run summon armor_stand ~ ~ ~ {Invulnerable:true,Tags:["projectile","soulstealer_bow"]}
execute at @e[tag=calc,limit=1] run execute if entity @p[predicate=skyblock:soulstealer_bow_epic] run summon armor_stand ~ ~ ~ {Invulnerable:true,Tags:["projectile","soulstealer_bow"]}
execute at @e[tag=calc,limit=1] run execute if entity @p[predicate=skyblock:super_undead_bow] run summon armor_stand ~ ~ ~ {Invulnerable:true,Tags:["projectile","super_undead_bow"]}

execute store result entity @e[limit=1,tag=calc] damage double 1 run scoreboard players get @p damage
data merge entity @e[limit=1,tag=calc] {CustomPotionEffects:[{Id:9b,Duration:20,Amplifier:1b,ShowParticles:0b}]}

execute if entity @e[tag=calc] run execute if entity @p[predicate=skyblock:mosquito_bow] run function skyblock:abilities/instant/nasty_bite

tag @e[limit=1,tag=calc] add shot
tag @e[limit=1,tag=calc,tag=shot] remove calc

function skyblock:abilities/reset_instant