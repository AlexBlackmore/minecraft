effect give @p[advancements={skyblock:commands/in_forest_biomes=true},predicate=skyblock:wearing_leaflet_armor] instant_health 1 0
function skyblock:reset_commands
execute as @p if predicate skyblock:wearing_leaflet_armor run schedule function skyblock:wearing_leaflet_armor 4s
