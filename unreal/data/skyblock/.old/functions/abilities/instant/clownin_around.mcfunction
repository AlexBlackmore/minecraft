attribute @p[level=5..9] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 4 add
attribute @p[level=10..14] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 8 add
attribute @p[level=15..19] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 12 add
attribute @p[level=20..24] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 16 add
attribute @p[level=25..29] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 20 add
attribute @p[level=30..34] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 24 add
attribute @p[level=35..39] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 28 add
attribute @p[level=40..44] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 32 add
attribute @p[level=45..49] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 36 add
attribute @p[level=50..] minecraft:generic.attack_damage modifier add 6-72-5-59-64 "Clownin' Around" 40 add

effect give @p minecraft:resistance 3 4
effect give @p minecraft:instant_health 1 28
effect give @p minecraft:hunger 360

schedule function skyblock:abilities/instant/clownin_around_end 3s replace 
function skyblock:abilities/reset_instant
