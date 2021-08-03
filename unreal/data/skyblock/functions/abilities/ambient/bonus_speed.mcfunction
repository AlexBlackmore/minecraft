effect give @p[advancements={skyblock:commands/ambient/farming_biomes=true},predicate=skyblock:farm_suit] speed 11
function skyblock:abilities/reset_ambient
execute if entity @p[predicate=skyblock:farm_suit] run schedule function skyblock:abilities/ambient/bonus_speed 4s replace