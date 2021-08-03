attribute @p minecraft:generic.attack_damage modifier remove 76-92-85-11-86
attribute @p[predicate=skyblock:warden_helmet,level=25..49] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.1 multiply
attribute @p[predicate=skyblock:warden_helmet,level=50..74] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.2 multiply
attribute @p[predicate=skyblock:warden_helmet,level=75..99] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.3 multiply
attribute @p[predicate=skyblock:warden_helmet,level=100..124] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.4 multiply
attribute @p[predicate=skyblock:warden_helmet,level=125..149] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.5 multiply
attribute @p[predicate=skyblock:warden_helmet,level=150..174] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.6 multiply
attribute @p[predicate=skyblock:warden_helmet,level=175..199] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.7 multiply
attribute @p[predicate=skyblock:warden_helmet,level=200..224] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.8 multiply
attribute @p[predicate=skyblock:warden_helmet,level=225..249] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.9 multiply
attribute @p[predicate=skyblock:warden_helmet,level=250..274] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.0 multiply
attribute @p[predicate=skyblock:warden_helmet,level=275..299] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.1 multiply
attribute @p[predicate=skyblock:warden_helmet,level=300..324] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.2 multiply
attribute @p[predicate=skyblock:warden_helmet,level=325..349] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.3 multiply
attribute @p[predicate=skyblock:warden_helmet,level=350..374] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.4 multiply
attribute @p[predicate=skyblock:warden_helmet,level=375..399] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.5 multiply
attribute @p[predicate=skyblock:warden_helmet,level=400..] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.6 multiply

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/brute_force=true}] run schedule function skyblock:abilities/ambient/brute_force 4s replace