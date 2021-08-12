execute unless entity @p[advancements={skyblock:commands/ambient/farming_biomes=true},predicate=skyblock:farm_suit] run attribute @p minecraft:generic.movement_speed modifier remove 15-22-47-27-33

attribute @p[advancements={skyblock:commands/ambient/farming_biomes=true},predicate=skyblock:farm_suit] minecraft:generic.movement_speed modifier add 15-22-47-27-33 "Bonus Speed" 0.2 multiply

function skyblock:abilities/reset_ambient
execute if entity @p[predicate=skyblock:farm_suit] run schedule function skyblock:abilities/ambient/bonus_speed 2s replace