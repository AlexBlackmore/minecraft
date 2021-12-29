execute as @p run attribute @p minecraft:generic.armor modifier remove 77-79-12-89-7
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check0] run function skyblock:abilities/ambient/refraction/refraction0
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check1] run function skyblock:abilities/ambient/refraction/refraction1
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check2] run function skyblock:abilities/ambient/refraction/refraction2
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check3] run function skyblock:abilities/ambient/refraction/refraction3
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check4] run function skyblock:abilities/ambient/refraction/refraction4
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check5] run function skyblock:abilities/ambient/refraction/refraction5
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check6] run function skyblock:abilities/ambient/refraction/refraction6
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check7] run function skyblock:abilities/ambient/refraction/refraction7
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check8] run function skyblock:abilities/ambient/refraction/refraction8
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check9] run function skyblock:abilities/ambient/refraction/refraction9
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check10] run function skyblock:abilities/ambient/refraction/refraction10
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check11] run function skyblock:abilities/ambient/refraction/refraction11
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check12] run function skyblock:abilities/ambient/refraction/refraction12
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check13] run function skyblock:abilities/ambient/refraction/refraction13
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check14] run function skyblock:abilities/ambient/refraction/refraction14
execute as @p[predicate=skyblock:crystal_armor,predicate=skyblock:light_check/light_check15] run function skyblock:abilities/ambient/refraction/refraction15

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/refraction=true}] run schedule function skyblock:abilities/ambient/refraction 2s replace