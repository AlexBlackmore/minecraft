effect give @p[advancements={skyblock:commands/ambient/forest_biomes=true},predicate=skyblock:leaflet_armor] regeneration 11 1
function skyblock:abilities/reset_ambient
execute if entity @p[predicate=skyblock:leaflet_armor] run schedule function skyblock:abilities/ambient/energy_of_the_forest 4s replace