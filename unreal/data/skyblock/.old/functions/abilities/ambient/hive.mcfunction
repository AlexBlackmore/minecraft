attribute @p minecraft:generic.attack_damage modifier remove 69-48-68-77-78
attribute @p[predicate=skyblock:hive,level=6..11] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 3 add
attribute @p[predicate=skyblock:hive,level=12..17] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 6 add
attribute @p[predicate=skyblock:hive,level=18..23] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 9 add
attribute @p[predicate=skyblock:hive,level=24..29] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 12 add
attribute @p[predicate=skyblock:hive,level=30..35] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 15 add
attribute @p[predicate=skyblock:hive,level=36..41] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 18 add
attribute @p[predicate=skyblock:hive,level=42..47] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 21 add
attribute @p[predicate=skyblock:hive,level=48..53] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 24 add
attribute @p[predicate=skyblock:hive,level=54..59] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 27 add
attribute @p[predicate=skyblock:hive,level=60..65] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 30 add
attribute @p[predicate=skyblock:hive,level=66..71] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 33 add
attribute @p[predicate=skyblock:hive,level=72..77] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 36 add
attribute @p[predicate=skyblock:hive,level=78..83] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 39 add
attribute @p[predicate=skyblock:hive,level=84..89] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 42 add
attribute @p[predicate=skyblock:hive,level=90..] minecraft:generic.attack_damage modifier add 69-48-68-77-78 "Hive" 45 add
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/hive=true}] run schedule function skyblock:abilities/ambient/hive 4s replace

