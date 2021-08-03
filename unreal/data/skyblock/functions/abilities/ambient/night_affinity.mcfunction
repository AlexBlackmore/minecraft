effect give @p[predicate=skyblock:mushroom_armor] night_vision 15

attribute @p minecraft:generic.max_health modifier remove 60-2-51-4-79
attribute @p minecraft:generic.armor modifier remove 65-49-36-20-48

attribute @p[predicate=skyblock:mushroom_armor,predicate=skyblock:nighttime] minecraft:generic.max_health modifier add 60-2-51-4-79 "Night Affinity" 22 add
attribute @p[predicate=skyblock:mushroom_armor,predicate=skyblock:nighttime] minecraft:generic.armor modifier add 65-49-36-20-48 "Night Affinity" 6 add

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/night_affinity=true}] run schedule function skyblock:abilities/ambient/night_affinity 4s replace

