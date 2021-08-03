attribute @p minecraft:generic.max_health modifier remove 33-43-91-52-72
attribute @p[predicate=skyblock:lapis_armor] minecraft:generic.max_health modifier add 33-43-91-52-72 "Health" 12 add

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/health=true}] run schedule function skyblock:abilities/ambient/health 2s replace