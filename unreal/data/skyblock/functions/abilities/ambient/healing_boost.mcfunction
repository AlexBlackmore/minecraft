function skyblock:abilities/reset_ambient

effect give @p[advancements={skyblock:commands/ambient/healing_boost=true},predicate=skyblock:regeneration0] instant_health 1 1
effect give @p[advancements={skyblock:commands/ambient/healing_boost=true}] instant_health

execute if entity @p[advancements={skyblock:commands/ambient/healing_boost=true}] run schedule function skyblock:abilities/ambient/healing_boost 10s replace
